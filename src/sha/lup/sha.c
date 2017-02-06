#include "shatest.h"

#define f1(x,y,z)	((x & y) | (~x & z))
#define f2(x,y,z)	(x ^ y ^ z)
#define f3(x,y,z)	((x & y) | (x & z) | (y & z))
#define f4(x,y,z)	(x ^ y ^ z)

#define ROT32(x,n)	((x << n) | (x >> (32 - n)))

#define FUNC(n,i)						\
    temp = ROT32(A,5) + f##n(B,C,D) + E + W[i] + CONST##n;	\
    E = D; D = C; C = ROT32(B,30); B = A; A = temp

void local_memset (INT32 * s, int c, int n, int e) {
  INT32 uc;
  INT32 *p;
  int m;

  m = n / 4;
  uc = c;
  p = (INT32 *) s;
  while (e-- > 0)
    {
      p++;
    }
  while (m-- > 0)
    {
      *p++ = uc;
    }
}

void local_memcpy (INT32 * s1, const BYTE * s2, int n){
  INT32 *p1;
  BYTE *p2;
  INT32 tmp;
  int m;
  m = n / 4;
  p1 = (INT32 *) s1;
  p2 = (BYTE *) s2;

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

static void sha_transform (INT32 * sha_info_digest, INT32 * sha_info_data){
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

void sha_init (INT32 * sha_info_digest, INT32 *sha_info_count_lo, INT32 *sha_info_count_hi) {
  sha_info_digest[0] = 0x67452301L;
  sha_info_digest[1] = 0xefcdab89L;
  sha_info_digest[2] = 0x98badcfeL;
  sha_info_digest[3] = 0x10325476L;
  sha_info_digest[4] = 0xc3d2e1f0L;
  *sha_info_count_lo = 0L;
  *sha_info_count_hi = 0L;
}

/* finish computing the SHA digest */

void sha_final (INT32 * sha_info_digest, INT32 * sha_info_data, INT32 sha_info_count_lo, INT32 sha_info_count_hi){
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
void sha_stream (
  BYTE * restrict indata,
  int * restrict in_i,
  INT32 * sha_info_digest,
  INT32 * sha_info_data,
  INT32 VSIZE,
  INT32 BLOCK_SIZE
){
  int i, j;
  const BYTE *p;
  INT32 sha_info_count_lo;
  INT32 sha_info_count_hi;

  sha_init (sha_info_digest, &sha_info_count_lo, &sha_info_count_hi);
  for (j = 0; j < VSIZE; j++)
    {
      i = in_i[j];
      p = &indata[j*BLOCK_SIZE+0];
      //sha_update (p, i);//inlined below
      if ((sha_info_count_lo + ((INT32) i << 3)) < sha_info_count_lo)
        {
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

/*
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     outData : expected output data                                       |
+--------------------------------------------------------------------------+
*/
const INT32 outData[5] =
  { 0x006a5a37UL, 0x93dc9485UL, 0x2c412112UL, 0x63f7ba43UL, 0xad73f922UL };

int main (){
  int i;
  int main_result;
      main_result = 0;
      sha_stream ((BYTE*)indatatest,in_itest,sha_info_digesttest, sha_info_datatest,VSIZEtest,BLOCK_SIZEtest);


      for (i = 0; i < 5; i++){
	       //printf ("%d\n", sha_info_digesttest[i]);
         main_result += (sha_info_digesttest[i] != outData[i]);
      }
      for (i = 0; i < 16; i++){
         //printf ("%d\n", sha_info_datatest[i]);
      }

      return main_result;
    }
