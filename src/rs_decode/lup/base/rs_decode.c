#include <stdio.h>
#include "global_rs.h"
#include "berlekamp.c"
#include "error_correct.c"
#include "gf_arith.c"
#include "rs_fifo.c"
#include "chien_search.c"
#include "error_mag.c"
#include "syndrome.c"

int main ()
{
   //Send one encoded file with errors (16 bytes set to 0) multiple times.
   int i, j;
   unsigned char n = nn;
   unsigned char t = tt;
   unsigned char in_d[nn] = {223, 0, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 253, 9, 60, 220, 91, 202, 48, 83, 201, 181, 81, 123, 117, 63, 98, 219, 20, 9, 71, 13, 231, 180, 105, 110, 114, 104, 147, 18, 55, 145, 170, 26};

   //  unsigned char s[16]
   unsigned char k = 0;
   unsigned char out_d[kk];

  for (j = 0; j < 3; ++j){
    //rs_decode(n, t, r, &k, out_d);
    // Top level decoder module
    //void rs_decode (unsigned char n, unsigned char t, unsigned char in_d[nn], unsigned char *k, unsigned char out_d[kk])
       unsigned char temp_k = n - 2*t;
       unsigned char s[2*tt];
       unsigned char c[tt+2];
       unsigned char w[tt+2];
       unsigned char lambda[tt];
       unsigned char omega[tt];
       unsigned char err_no;
       unsigned char err_loc[kk];
       unsigned char alpha_inv[tt];
       unsigned char err[kk];
       unsigned char in_data[kk];
       unsigned char in_d_2[nn];

       // Create copy of input to pass to fifo to error corrector
       // Directive: Unroll loop maximally
    Simple_rs1:   for (i = 0; i < nn; i++)
           in_d_2[i] = in_d[i];

       k = temp_k;
       rs_fifo(temp_k, in_d, in_data);
       syndrome(temp_k, t, in_d_2, s);
       berlekamp(t, s, lambda, omega);
       chien_search(kk, tt, lambda, &err_no, err_loc, alpha_inv);
       error_mag(kk, lambda, omega, err_no, err_loc, alpha_inv, err);
       error_correct(temp_k, in_data, err, out_d);



    for (i = 0; i < k; ++ i)
    printf("out[%d]=%d\n",i,(int)out_d[i]);
  }

  return (int)out_d[i];
};
