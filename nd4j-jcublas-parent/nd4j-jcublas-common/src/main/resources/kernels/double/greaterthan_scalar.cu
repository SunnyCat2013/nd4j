#include <scalar.h>
//scalar and current element
__device__ double op(double d1,double d2,double *params) {
   return d2 > d1 ? 1 : 0;
}

extern "C"
__global__ void greaterthan_scalar_double(int n, int idx,double dx,double *dy,int incy,double *params,double *result) {
       transform(n,idx,dx,dy,incy,params,result);
 }


