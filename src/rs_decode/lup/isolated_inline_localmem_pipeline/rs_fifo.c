//#include "global_rs.h"

void rs_fifo(unsigned char k, unsigned char in_d[nn], unsigned char out_d[kk])
{
   Rs_fifo: for (int i = 0; i < kk; i++)
      out_d[i] = (i < k) ? in_d[i] : 0;
}
