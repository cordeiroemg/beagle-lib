::
:: windows script to create cuda files for each state count
:: from the generic state count file
:: @author Aaron Darling
::
:: TODO: make this pretty with a loop over state counts
::


set OLDDIR=%CD%

cd ..\..\libhmsbeagle\GPU\kernels

echo // DO NOT EDIT -- autogenerated file -- edit kernels4.cu instead > kernels4ls.cu
echo #define LSCALER >> kernels4ls.cu
type kernels4.cu >> kernels4ls.cu


echo // DO NOT EDIT -- autogenerated file -- edit kernelsX.cu instead > kernels32.cu
echo #define STATE_COUNT 32 >> kernels32.cu
type kernelsX.cu >> kernels32.cu

echo // DO NOT EDIT -- autogenerated file -- edit kernelsX.cu instead > kernels32ls.cu
echo #define STATE_COUNT 32 >> kernels32ls.cu
echo #define LSCALER >> kernels32ls.cu
type kernelsX.cu >> kernels32ls.cu


echo // DO NOT EDIT -- autogenerated file -- edit kernelsX.cu instead > kernels48.cu
echo #define STATE_COUNT 48 >> kernels48.cu
type kernelsX.cu >> kernels48.cu

echo // DO NOT EDIT -- autogenerated file -- edit kernelsX.cu instead > kernels48ls.cu
echo #define STATE_COUNT 48 >> kernels48ls.cu
echo #define LSCALER >> kernels48ls.cu
type kernelsX.cu >> kernels48ls.cu


echo // DO NOT EDIT -- autogenerated file -- edit kernelsX.cu instead > kernels64.cu
echo #define STATE_COUNT 64 >> kernels64.cu
type kernelsX.cu >> kernels64.cu

echo // DO NOT EDIT -- autogenerated file -- edit kernelsX.cu instead > kernels64ls.cu
echo #define STATE_COUNT 64 >> kernels64ls.cu
echo #define LSCALER >> kernels64ls.cu
type kernelsX.cu >> kernels64ls.cu

