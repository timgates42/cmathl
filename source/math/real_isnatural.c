#include <stdlib.h>
#include "include/math.h"


CML_EXTERN_INLINE bool
__isnatural(double x)
{
        return (__isinteger(x) && x > 0);
}

bool
real_isnatural(real x)
{
        return __isnatural(x->value(x));
}