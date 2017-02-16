//#include "global_rs.h"

// Parameters k and t need to be dynamically used for each packet
// However, this version uses static values for simplicity

// Directive: Synthesize independently
void syndrome (unsigned char k, unsigned char t, unsigned char r[nn], unsigned char s[2*tt])
{
   unsigned char r_temp;

   // Directive: Unroll loop maximally
   Syn_Init: for (int j=0; j<2*tt; j++)
      s[j]=0;

   Syn_Outer: for (int i = 0; i < nn; ++ i)
   {
      r_temp = r[i];

      // Directive: Unroll loop maximally
      Syn_Inner: for (int j = 0; j < 2*tt; ++ j)
      {
         s[j] = gfmult_hw (s [j], alpha(j+1)) ^ r_temp;
      }
   }
}
