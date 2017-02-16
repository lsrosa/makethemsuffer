#define mm           8
#define nn           255
#define tt           16
#define kk           223


void syndrome (unsigned char k, unsigned char t, unsigned char r[nn], unsigned char s[2*tt]);

void rs_fifo(unsigned char k, unsigned char in_d[nn], unsigned char out_d[kk]);

void chien_search(  unsigned char k, unsigned char t, unsigned char lambda[tt], unsigned char *err_no, unsigned char err_loc[tt], unsigned char alpha_inv[tt]);

void error_correct( unsigned char k, unsigned char in_data[kk], unsigned char err[kk],unsigned char out_data[kk]);

void error_mag(unsigned char k, unsigned char lambda[tt], unsigned char omega[tt], unsigned char err_no,unsigned char err_loc[tt], unsigned char alpha_inv[tt], unsigned char err[kk]);

void berlekamp (unsigned char t, unsigned char s[2*tt], unsigned char c_out[tt], unsigned char w_out[tt]);

//gf_arith.h
const unsigned int pp [mm+1] = { 1, 0, 1, 1, 1, 0, 0, 0, 1} ; /* specify irreducible polynomial coeffts */
const unsigned char pp_char = 29;


void generate_gf( int *alpha_to, int *index_of);
unsigned char gfmult_lut(unsigned char a, unsigned char b, int *alpha_to, int *index_of);
unsigned char gfmult_hw(unsigned char a, unsigned char b);
unsigned char gfadd_hw(unsigned char a, unsigned char b);
unsigned char gfinv_lut(unsigned char a);
unsigned char alpha (unsigned char n);
unsigned char alphainv_lut (unsigned char n);
unsigned char gfdiv_lut (unsigned char dividend, unsigned char divisor);
void polymult_mod2t (unsigned char *result, unsigned char *left, unsigned char *right);
void compute_deriv (unsigned char lambda[tt], unsigned char lambda_deriv[tt]);
unsigned char poly_eval (unsigned char poly[tt], unsigned char alpha_inv);
