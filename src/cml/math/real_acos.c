#include <stdlib.h>
#include <cml.h>

/*
 * Computes real arc cosine
 *
 * @param real_t x
 * @return real_t
 */

real_t
real_acos(real_t x)
{
        /* Declaration of variables and structures */
        real_t h, y;

        /* Mathematical algorithm */
        y = real_asin(x);
        h = real_sub((HALFPI), y);

        /* Return */
        return h;
}