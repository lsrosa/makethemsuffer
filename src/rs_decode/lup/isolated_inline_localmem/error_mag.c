//#include "global_rs.h"

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
    for (int i = 0; i < tt; i++)
    {
        lambda_val  = poly_eval_inst1(lambda_deriv, alpha_inv[i]);
        omega_val   = poly_eval_inst2(omega, alpha_inv[i]);
        err_temp[i] = gfdiv_lut_inst(omega_val, lambda_val);
    }

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
