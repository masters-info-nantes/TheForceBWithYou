/* WARNING if type checker is not performed, translation could contain errors ! */

#include "pgcd.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause INITIALISATION */
void pgcd__INITIALISATION(void)
{
    
}

/* Clause OPERATIONS */

void pgcd__pgcd_calc(int32_t xx, int32_t yy, int32_t *rr)
{
    {
        int32_t cd;
        int32_t rx;
        int32_t ry;
        int32_t cr;
        
        cd = 1;
        while((((cd) < (xx)) &&
            ((cd) < (yy))))
        {
            rx = xx-(xx / cd) * cd;
            ry = yy-(yy / cd) * cd;
            if(((rx == 0) &&
                (ry == 0)))
            {
                cr = cd;
            }
            cd = cd+1;
        }
    }
}

