#include "sha.h"

#define f1(x,y,z)	((x & y) | (~x & z))
#define f2(x,y,z)	(x ^ y ^ z)
#define f3(x,y,z)	((x & y) | (x & z) | (y & z))
#define f4(x,y,z)	(x ^ y ^ z)

#define ROT32(x,n)	((x << n) | (x >> (32 - n)))

#define FUNC(n,i)						\
    temp = ROT32(A,5) + f##n(B,C,D) + E + W[i] + CONST##n;	\
    E = D; D = C; C = ROT32(B,30); B = A; A = temp

void local_memset (__global INT32 * s, int c, int n, int e) {
  INT32 uc;
  //__global INT32 *p;
  int m;

  m = n / 4;
  uc = c;
  //p = (__global INT32 *) s;
  while (e-- > 0)
    {
      //p++;
      //s++;
    }
  while (m-- > 0)
    {
      //*p++ = uc;
      //*s++ = uc;
    }
}

void local_memcpy (__global INT32 * s1, __constant BYTE * s2, int n){
  __global INT32 *p1;
  __constant BYTE *p2;
  INT32 tmp;
  int m;
  m = n / 4;
  p1 = (__global INT32 *) s1;
  p2 = (__constant BYTE *) s2;

  while (m-- > 0)
    {
      tmp = 0;

      tmp |= 0xFF & *p2++;
      tmp |= (0xFF & *p2++) << 8;
      tmp |= (0xFF & *p2++) << 16;
      tmp |= (0xFF & *p2++) << 24;
      *p1 = tmp;
      p1++;
    }
}
/* do SHA transformation */
static void sha_transform (__global INT32 * sha_info_digest, __global INT32 * sha_info_data){
  int i;
  INT32 temp, A, B, C, D, E, W[80];

  for (i = 0; i < 16; ++i)
    {
      W[i] = sha_info_data[i];
    }
  for (i = 16; i < 80; ++i)
    {
      W[i] = W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16];
    }
  A = sha_info_digest[0];
  B = sha_info_digest[1];
  C = sha_info_digest[2];
  D = sha_info_digest[3];
  E = sha_info_digest[4];

  for (i = 0; i < 20; ++i)
    {
      FUNC (1, i);
    }
  for (i = 20; i < 40; ++i)
    {
      FUNC (2, i);
    }
  for (i = 40; i < 60; ++i)
    {
      FUNC (3, i);
    }
  for (i = 60; i < 80; ++i)
    {
      FUNC (4, i);
    }

  sha_info_digest[0] += A;
  sha_info_digest[1] += B;
  sha_info_digest[2] += C;
  sha_info_digest[3] += D;
  sha_info_digest[4] += E;
}

/* initialize the SHA digest */

void sha_init (__global INT32 * sha_info_digest, INT32 *sha_info_count_lo, INT32 *sha_info_count_hi) {
  sha_info_digest[0] = 0x67452301L;
  sha_info_digest[1] = 0xefcdab89L;
  sha_info_digest[2] = 0x98badcfeL;
  sha_info_digest[3] = 0x10325476L;
  sha_info_digest[4] = 0xc3d2e1f0L;
  *sha_info_count_lo = 0L;
  *sha_info_count_hi = 0L;
}

/* update the SHA digest */


/* finish computing the SHA digest */

void sha_final (__global INT32 * sha_info_digest, __global INT32 * sha_info_data, INT32 sha_info_count_lo, INT32 sha_info_count_hi){
  int count;
  INT32 lo_bit_count;
  INT32 hi_bit_count;

  lo_bit_count = sha_info_count_lo;
  hi_bit_count = sha_info_count_hi;
  count = (int) ((lo_bit_count >> 3) & 0x3f);
  sha_info_data[count++] = 0x80;
  if (count > 56)
    {
      local_memset (sha_info_data, 0, 64 - count, count);
      sha_transform (sha_info_digest, sha_info_data);
      local_memset (sha_info_data, 0, 56, 0);
    }
  else
    {
      local_memset (sha_info_data, 0, 56 - count, count);
    }
  sha_info_data[14] = hi_bit_count;
  sha_info_data[15] = lo_bit_count;
  sha_transform (sha_info_digest, sha_info_data);
}

/* compute the SHA digest of a FILE stream */
__kernel void sha_stream (
  __constant BYTE * restrict indata,
  __constant int * restrict in_i,
  __global INT32 * restrict sha_info_digest,
  __global INT32 * restrict sha_info_data,
  INT32 VSIZE,
  INT32 BLOCK_SIZE
){
  INT32 sha_info_count_lo;
  INT32 sha_info_count_hi;	/* 64-bit bit count */

  int i, j;
  __constant BYTE *p;

  sha_init(sha_info_digest, &sha_info_count_lo, &sha_info_count_hi);
  for (j = 0; j < VSIZE; j++)
    {
      i = in_i[j];
      p = &indata[j*BLOCK_SIZE+0];
      //sha_update (p, i);//inlined below
      if ((sha_info_count_lo + ((INT32) i << 3)) < sha_info_count_lo){
        ++sha_info_count_hi;
      }
      sha_info_count_lo += (INT32) i << 3;
      sha_info_count_hi += (INT32) i >> 29;
      while (i >= SHA_BLOCKSIZE)
        {
          local_memcpy (sha_info_data, p, SHA_BLOCKSIZE);
          sha_transform (sha_info_digest, sha_info_data);
          p += SHA_BLOCKSIZE;
          i -= SHA_BLOCKSIZE;
        }
      local_memcpy (sha_info_data, p, i);
    }
  sha_final (sha_info_digest, sha_info_data, sha_info_count_lo, sha_info_count_hi);
}
