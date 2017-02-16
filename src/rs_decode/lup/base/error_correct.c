//#include "global_rs.h"

// Directive: Synthesize independently
void error_correct( unsigned char k, unsigned char in_data[kk], unsigned char err[kk],
                    unsigned char out_data[kk])
{
    for (int i = 0; i < kk; i++)
        out_data[i] = gfadd_hw(in_data[i],err[i]);
}
