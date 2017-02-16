//#include "global_rs.h"

// Directive: Synthesize independently
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
    Chien_AssignInArray: for (int i = 0; i < tt; i++)
       lambda_a[i] = lambda[i];

    for (int i = nn-1; i >= 0; i--)
    {
       // Directive: Unroll loop maximally
       Chien_Inner1: for (int j = 0; j < tt; j++)
            lambda_a[j] = gfmult_hw(lambda_a[j], alpha(j+1));

       accum = 1;

       // Directive: Unroll loop maximally
       Chien_Inner2: for (int j = 0; j < tt; j++)
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
    Chien_AssignOutArray: for (int i = 0; i < tt; i++)
    {
       err_loc[i]   = err_loc_temp[i];
       alpha_inv[i] = alpha_inv_temp[i];
    }

    *err_no = err_cnt;
}
