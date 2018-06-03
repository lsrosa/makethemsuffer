#include <stdio.h>
#include "global_rs.h"
#define UNR 2

// Directive: Synthesize independently
void syndrome (unsigned char k, unsigned char t, unsigned char r[nn], unsigned char s[2*tt])
{
   unsigned char r_temp;

   // Directive: Unroll loop maximally
   Syn_Init:
   #pragma unroll UNR
   for (int j=0; j<2*tt; j++)
      s[j]=0;

   Syn_Outer:
   #pragma unroll UNR
   for (int i = 0; i < nn; ++ i)
   {
      r_temp = r[i];

      // Directive: Unroll loop maximally
      Syn_Inner:
      #pragma unroll UNR
      for (int j = 0; j < 2*tt; ++ j)
      {
         s[j] = gfmult_hw (s [j], alpha(j+1)) ^ r_temp;
      }
   }
}


void rs_fifo(unsigned char k, unsigned char *in_d, unsigned char *out_d)
{
   rs_fifo:
   #pragma unroll UNR
   for (int i = 0; i < kk; i++){
     out_d[i] = (i < k) ? in_d[i] : 0;
   }
}


unsigned char gfadd_hw(unsigned char a, unsigned char b)
{
    return a^b;
}

unsigned char gfmult_hw(unsigned char a, unsigned char b)
{

   unsigned int temp = 0;
   unsigned int temp2 = 0;

   // Directive: Unroll loop maximally
   for (int i = 0; i < 8; i++){
      if (b & (1 << i)){
        temp2 ^= (unsigned int) a << i;
        //temp ^= c;
      }
    }

   // Directive: Unroll loop maximally
   for (int k = 15; k > 7; k--){
      if (temp & (1 << k)){
	     temp ^= (unsigned int)(pp_char << (k - 8));
     }
   }

   return (temp & 255);

}

unsigned char alpha (unsigned char n)
{
    unsigned char alpha_lut[256] = {
        1,2,4,8,16,32,64,128,29,58, 116, 232, 205, 135, 19, 38, 76, 152, 45, 90, 180, 117, 234, 201, 143, 3, 6, 12, 24, 48, 96, 192, 157, 39, 78, 157, 37, 74, 148, 53, 106, 212,181, 119, 238, 193,159,35, 70, 140, 5, 10, 20, 40, 80, 160, 93, 186, 105,210, 185,111,222,161,95,190,97,194,153,47,94,188,101,202,137,15,30,60,120,240,253, 231,211,187,107,214,177,127,254,225,223,163,91,182,113,226,217,175,65,134,17,34,68,136,13,26,52,104, 208,189,103,206,129,31,62,124,248,237,199,147,59,118,236,197,151,51,102,204,133,23,46,92,184,109,218, 169,79,158,33,66,132,21,42,84,168,77,154,41,82,164,85,170,73,146,57,114,228,213,183,115,230,209, 191,99,198,145,63,126,252,229,215,179,123,246,241,255,227,219,171,75,150,49,98,196,149,55,110,220,165,87,174, 65,130,25,50,100,200,141,7,14,28,56,112,224,221,167,83,166,81,162,89,178,121,242,249,239,195,155,43,86,172, 69,138,9,18,36,72,144,61,122,244,245,247,243,251,235,203,139,11,22,44,88,176,125,250,233,207,131,27,54,108,216, 173,71,142,0};
        return alpha_lut[n];
}

unsigned char gfinv_lut (unsigned char a)
{

unsigned char lut[256] = { 2, 1, 142, 244, 71, 167, 122, 186, 173, 157, 221, 152, 61, 170, 93, 150, 216, 114, 192, 88, 224, 62, 76, 102, 144, 222, 85, 128, 160, 131, 75, 42, 108, 237, 57, 81, 96, 86, 44, 138, 112, 208, 31, 74, 38, 139, 51, 110, 72, 137, 111, 46, 164, 195, 64, 94, 80, 34, 207, 169, 171, 12, 21, 225, 54, 95, 248, 213, 146, 78, 166, 4, 48, 136, 43, 30, 22, 103, 69, 147, 56, 35, 104, 140, 129, 26, 37, 97, 19, 193, 203, 99, 151, 14, 55, 65, 36, 87, 202, 91, 185, 196, 23, 77, 82, 141, 239, 179, 32, 236, 47, 50, 40, 209, 17, 217, 233, 251, 218, 121, 219, 119, 6, 187, 132, 205, 254, 252, 27, 84, 161, 29, 124, 204, 228, 176, 73, 49, 39, 45, 83, 105, 2, 245, 24, 223, 68, 79, 155, 188, 15, 92, 11, 220, 189, 148, 172, 9, 199, 162, 28, 130, 159, 198, 52, 194, 70, 5, 206, 59, 13, 60, 156, 8, 190, 183, 135, 229, 238, 107, 235, 242, 191, 175, 197, 100, 7, 123, 149, 154, 174, 182, 18, 89, 165, 53, 101, 184, 163, 158, 210, 247, 98, 90, 133, 125, 168, 58, 41, 113, 200, 246, 249, 67, 215, 214, 16, 115, 118, 120, 153, 10, 25, 145, 20, 63, 230, 240, 134, 177, 226, 241, 250, 116, 243, 180, 109, 33, 178, 106, 227, 231, 181, 234, 3, 143, 211, 201, 66, 212, 232, 117, 127, 255, 126, 253};
 return lut[a];
}

unsigned char alphainv_lut (unsigned char n)
{
  if (n == 0)
     return 1;
   return gfinv_lut( alpha (n) );
}

unsigned char gfdiv_lut (unsigned char dividend, unsigned char divisor)
{
  return gfmult_hw ( dividend, gfinv_lut(divisor));
}

// Assumption: First bit of Lambda (alpha**0) is not transmitted
void compute_deriv (unsigned char lambda[tt], unsigned char lambda_deriv[tt])
{
   // Directive: Unroll loop maximally
   compute_deriv:
   #pragma unroll UNR
   for (int i = 0; i < tt; i++){
     lambda_deriv[i] = (i % 2 == 0) ? lambda[i] : 0;
   }
}


unsigned char poly_eval (unsigned char poly[tt], unsigned char alpha_inv)
{
   unsigned char val = 0;

   // Directive: Unroll loop maximally
   for (int j = tt-1; j >= 0; j--) {
      val = gfadd_hw(gfmult_hw(val, alpha_inv), poly[j]);
   }
   return val;
}

// Directive: Synthesize independently
unsigned char poly_eval_inst1 (unsigned char poly[tt], unsigned char alpha_inv)
{
   return poly_eval(poly, alpha_inv);
}

// Directive: Synthesize independently
unsigned char poly_eval_inst2 (unsigned char poly[tt], unsigned char alpha_inv)
{
   return poly_eval(poly, alpha_inv);
}

// Directive: Synthesize independently
unsigned char gfdiv_lut_inst (unsigned char dividend, unsigned char divisor)
{
  return gfdiv_lut(dividend, divisor);
}

// Directive: Synthesize independently
void compute_deriv_inst (unsigned char lambda[tt], unsigned char lambda_deriv[tt])
{
   compute_deriv(lambda, lambda_deriv);
}


// Directive: Synthesize independently
void error_mag(unsigned char k, unsigned char lambda[tt], unsigned char omega[tt], unsigned char err_no, unsigned char err_loc[tt], unsigned char alpha_inv[tt],
               unsigned char err[kk])
{
    int loc_idx = 0;
    unsigned char lambda_val = 0;
    unsigned char omega_val = 0;
    unsigned char lambda_deriv[tt];
    unsigned char err_temp[tt];

    compute_deriv(lambda, lambda_deriv);
    error_mag:
    #pragma unroll UNR
    for (int i = 0; i < tt; i++)
    {
        lambda_val  = poly_eval_inst1(lambda_deriv, alpha_inv[i]);
        omega_val   = poly_eval_inst2(omega, alpha_inv[i]);
        err_temp[i] = gfdiv_lut_inst(omega_val, lambda_val);
    }

    error_mag2:
    #pragma unroll UNR
    for (int i = 0; i < kk; i++)
    {
        if ((err_loc[loc_idx] == kk-1-i) && (loc_idx < err_no))
        {
            err[i] = err_temp[loc_idx];
            loc_idx++;
        }
        else
        {
            err[i] = 0;
        }
    }
}


// Directive: Synthesize independently
void error_correct( unsigned char k, unsigned char in_data[kk], unsigned char err[kk],
                    unsigned char out_data[kk])
{
    error_correct:
    #pragma unroll UNR
    for (int i = 0; i < kk; i++){
      out_data[i] = gfadd_hw(in_data[i],err[i]);

    }
}

void gfmult_array_array_hw (unsigned char *res_vec, unsigned char *in_vec0, unsigned char *in_vec1)
{
  gfmult_array_array_hw:
  #pragma unroll UNR
  for (int i = 0; i < tt+2; ++i){
    res_vec[i] = gfmult_hw(in_vec0[i],in_vec1[i]);
  }
}

// Directive: Synthesize independently
// Directive: Unroll loop maximally
void gfmult_scalar_array_hw1 (unsigned char *res_vec, unsigned char val, unsigned char *in_vec)
{
  gfmult_scalar_array_hw1: for (int i = 0; i < tt+2; ++i)
    res_vec[i] = gfmult_hw(val,in_vec[i]);
}

// Directive: Synthesize independently
// Directive: Unroll loop maximally
void gfmult_scalar_array_hw2 (unsigned char *res_vec, unsigned char val, unsigned char *in_vec)
{
  gfmult_scalar_array_hw2: for (int i = 0; i < tt+2; ++i)
    res_vec[i] = gfmult_hw(val,in_vec[i]);
}

// Directive: Synthesize independently
// Directive: Unroll loop maximally
void gfadd_array_array_hw1 (unsigned char *in_vec0, unsigned char *in_vec1)
{
  gfadd_array_array_hw1: for (int i = 0; i < tt+2; ++i)
    in_vec0[i] = gfadd_hw(in_vec0[i], in_vec1[i]);
}

// Directive: Synthesize independently
// Directive: Unroll loop maximally
void gfadd_array_array_hw2 (unsigned char *in_vec0, unsigned char *in_vec1)
{
  gfadd_array_array_hw2: for (int i = 0; i < tt+2; ++i)
    in_vec0[i] = gfadd_hw(in_vec0[i], in_vec1[i]);
}

// Directive: Synthesize independently
unsigned char gfsum_array_hw (unsigned char *in_vec)
{
  unsigned char res = 0;

  // Directive: Unroll loop maximally
  gfsum_array_hw: for (int i = 0; i < tt+2; ++i)
    res = gfadd_hw(res, in_vec[i]);

  return res;
}

//#pragma hls_design
void berlekamp (unsigned char t, unsigned char s[2*tt], unsigned char c_out[tt], unsigned char w_out[tt])
{
  unsigned char l = 0;
  unsigned char p[tt+2];
  unsigned char a[tt+2];
  unsigned char t1[tt+2];
  unsigned char t2[tt+2];
  unsigned char syn_shift_reg[tt+2];
  unsigned char temp[tt+2];
  unsigned char c[tt+2];
  unsigned char w[tt+2];

  c[0] = 1;
  p[0] = 1;
  w[0] = 0;
  a[0] = 1;
  syn_shift_reg[0] = 0;
  temp[0] = 0;

  // Directive: Unroll loop maximally
  BerlInit:
  #pragma unroll UNR
  for (int i = 1; i < tt+2; i++)
  {
    c [i] = 0;
    w [i] = 0;
    p [i] = 0;
    a [i] = 0;
    t1[i] = 0;
    t2[i] = 0;
    syn_shift_reg[i] = 0;
    temp[i] = 0;
  }

  unsigned char dstar = 1;
  unsigned char d = 0;
  unsigned char ddstar = 1;
   BerlOuter:
   #pragma unroll UNR
   for (int i = 0; i < 2*tt; i++ )
   {
      // Directive: Unroll loop maximally
      BerlShift:
      #pragma unroll UNR
      for (int k = tt+1; k > 0; --k)
      {
          syn_shift_reg[k] = syn_shift_reg[k-1];
          p[k] = p[k-1];
          a[k] = a[k-1];
      }
      syn_shift_reg[0] = s[i];
      p[0] = 0;
      a[0] = 0;

      gfmult_array_array_hw(temp, c, syn_shift_reg);
      d = gfsum_array_hw(temp);

      if (d != 0)
      {
	     ddstar = gfmult_hw(d, dstar);
	     // Directive: Unroll loop maximally
	     BerlSimple1:
       #pragma unroll UNR
       for (int k = 0; k < tt+2; ++k)
         {
               t1 [k] = p [k];
               t2 [k] = a [k];
         }

         if (i + 1 > 2*l)
         {
	        l = i - l + 1;

            // Directive: Unroll loop maximally
            BerlSimple2:
            #pragma unroll UNR
            for (int k = 0; k < tt+2; ++k)
            {
               p [k] = c [k];
               a [k] = w [k];
            }
            dstar = gfinv_lut ( d );
         }

	 gfmult_scalar_array_hw1(temp, ddstar, t1);
	 gfadd_array_array_hw1(c,temp);
	 gfmult_scalar_array_hw2(temp, ddstar, t2);
	 gfadd_array_array_hw2(w,temp);

      }
   }

   // Directive: Unroll loop maximally
   BerlCopy:
   #pragma unroll UNR
   for (int k = 0; k < tt; ++k)
   {
       c_out[k] = c[k+1];
       w_out[k] = w[k+1];
   }
}


void chien_search(  unsigned char k, unsigned char t, unsigned char lambda[tt],
                    unsigned char *err_no, unsigned char err_loc[tt], unsigned char alpha_inv[tt])
{
    unsigned char accum = 0;
    unsigned char err_cnt = 0;
    unsigned char alphainv = 1;
    unsigned char lambda_a[tt];
    unsigned char err_loc_temp[tt];
    unsigned char alpha_inv_temp[tt];

    // Directive: Unroll loop maximally
    Chien_AssignInArray:
    #pragma unroll UNR
    for (int i = 0; i < tt; i++)
       lambda_a[i] = lambda[i];

    for (int i = nn-1; i >= 0; i--)
    {
       // Directive: Unroll loop maximally
       Chien_Inner1:
       #pragma unroll UNR
       for (int j = 0; j < tt; j++)
            lambda_a[j] = gfmult_hw(lambda_a[j], alpha(j+1));

       accum = 1;

       // Directive: Unroll loop maximally
       Chien_Inner2:
       #pragma unroll UNR
       for (int j = 0; j < tt; j++)
            accum = gfadd_hw(accum, lambda_a[j]);

       alphainv = gfmult_hw(alphainv, 2);

       if ((i >= 2*tt) && (i < kk+2*tt) && (accum == 0))
       {
            err_loc_temp[err_cnt] = i-2*tt;
            alpha_inv_temp[err_cnt] = alphainv;
            err_cnt++ ;
       }
    }

    // Directive: Unroll loop maximally
    Chien_AssignOutArray:
    #pragma unroll UNR
    for (int i = 0; i < tt; i++)
    {
       err_loc[i]   = err_loc_temp[i];
       alpha_inv[i] = alpha_inv_temp[i];
    }

    *err_no = err_cnt;
}

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
  for (j = 0; j < 3; ++j){
    //rs_decode(n, t, r, &k, out_d);
    // Top level decoder module
    //void rs_decode (unsigned char n, unsigned char t, unsigned char in_d[nn], unsigned char *k, unsigned char out_d[kk])

       // Create copy of input to pass to fifo to error corrector
       // Directive: Unroll loop maximally
    Simple_rs1:
    #pragma unroll UNR
    for (i = 0; i < nn; i++)
           in_d_2[i] = in_d[i];

       k = temp_k;
       rs_fifo(temp_k, in_d, in_data);
       syndrome(temp_k, t, in_d_2, s);
       berlekamp(t, s, lambda, omega);
       chien_search(kk, tt, lambda, &err_no, err_loc, alpha_inv);
       error_mag(kk, lambda, omega, err_no, err_loc, alpha_inv, err);
       error_correct(temp_k, in_data, err, out_d);



    //for (i = 0; i < k; ++ i)
    printf("out[%d]=%d\n",i,(int)out_d[i]);
  }

  return (int)out_d[i];
};
