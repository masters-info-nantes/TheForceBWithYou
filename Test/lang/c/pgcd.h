#ifndef _pgcd_h
#define _pgcd_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void pgcd__INITIALISATION(void);

/* Clause OPERATIONS */

extern void pgcd__pgcd_calc(int32_t xx, int32_t yy, int32_t *rr);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _pgcd_h */
