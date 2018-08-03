; ModuleID = 'faddtree.postlto.8.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@a = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@b = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@c = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@m = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@n = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@aa = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@bb = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@cc = internal global [100 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.800000e+01, float 4.900000e+01, float 5.000000e+01, float 5.100000e+01, float 5.200000e+01, float 5.300000e+01, float 5.400000e+01, float 5.500000e+01, float 5.600000e+01, float 5.700000e+01, float 5.800000e+01, float 5.900000e+01, float 6.000000e+01, float 6.100000e+01, float 6.200000e+01, float 6.300000e+01, float 6.400000e+01, float 6.500000e+01, float 6.600000e+01, float 6.700000e+01, float 6.800000e+01, float 6.900000e+01, float 7.000000e+01, float 7.100000e+01, float 7.200000e+01, float 7.300000e+01, float 7.400000e+01, float 7.500000e+01, float 7.600000e+01, float 7.700000e+01, float 7.800000e+01, float 7.900000e+01, float 8.000000e+01, float 8.100000e+01, float 8.200000e+01, float 8.300000e+01, float 8.400000e+01, float 8.500000e+01, float 8.600000e+01, float 8.700000e+01, float 8.800000e+01, float 8.900000e+01, float 9.000000e+01, float 9.100000e+01, float 9.200000e+01, float 9.300000e+01, float 9.400000e+01, float 9.500000e+01, float 9.600000e+01, float 9.700000e+01, float 9.800000e+01, float 9.900000e+01, float 1.000000e+02], align 4
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"sum = %x\0A\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1
@.str3 = private unnamed_addr constant [19 x i8] c"Final value is %x\0A\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"Expected is %x\0A\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"sub is %x\0A\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"Diff is %x\0A\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"eps is %x\0A\00", align 1
@.str8 = private unnamed_addr constant [13 x i8] c"equal is %x\0A\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1
@.str10 = private unnamed_addr constant [13 x i8] c"Value is %f\0A\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %sum.sroa.0.06 = phi i32 [ 0, %0 ], [ %73, %1 ]
  %i.05 = phi i32 [ 0, %0 ], [ %4, %1 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2
  %2 = getelementptr inbounds [100 x float]* @a, i32 0, i32 %i.05
  %3 = load volatile float* %2, align 4, !tbaa !1
  %4 = add nsw i32 %i.05, 1
  %5 = getelementptr inbounds [100 x float]* @a, i32 0, i32 %4
  %6 = load volatile float* %5, align 4, !tbaa !1
  %7 = fadd float %3, %6
  %8 = add nsw i32 %i.05, 2
  %9 = getelementptr inbounds [100 x float]* @a, i32 0, i32 %8
  %10 = load volatile float* %9, align 4, !tbaa !1
  %11 = add nsw i32 %i.05, 3
  %12 = getelementptr inbounds [100 x float]* @a, i32 0, i32 %11
  %13 = load volatile float* %12, align 4, !tbaa !1
  %14 = fadd float %10, %13
  %15 = add nsw i32 %i.05, 4
  %16 = getelementptr inbounds [100 x float]* @b, i32 0, i32 %15
  %17 = load volatile float* %16, align 4, !tbaa !1
  %18 = add nsw i32 %i.05, 5
  %19 = getelementptr inbounds [100 x float]* @b, i32 0, i32 %18
  %20 = load volatile float* %19, align 4, !tbaa !1
  %21 = fadd float %17, %20
  %22 = add nsw i32 %i.05, 6
  %23 = getelementptr inbounds [100 x float]* @b, i32 0, i32 %22
  %24 = load volatile float* %23, align 4, !tbaa !1
  %25 = add nsw i32 %i.05, 7
  %26 = getelementptr inbounds [100 x float]* @b, i32 0, i32 %25
  %27 = load volatile float* %26, align 4, !tbaa !1
  %28 = fadd float %24, %27
  %29 = getelementptr inbounds [100 x float]* @c, i32 0, i32 %i.05
  %30 = load volatile float* %29, align 4, !tbaa !1
  %31 = getelementptr inbounds [100 x float]* @c, i32 0, i32 %4
  %32 = load volatile float* %31, align 4, !tbaa !1
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds [100 x float]* @c, i32 0, i32 %8
  %35 = load volatile float* %34, align 4, !tbaa !1
  %36 = getelementptr inbounds [100 x float]* @c, i32 0, i32 %11
  %37 = load volatile float* %36, align 4, !tbaa !1
  %38 = fadd float %35, %37
  %39 = getelementptr inbounds [100 x float]* @m, i32 0, i32 %i.05
  %40 = load volatile float* %39, align 4, !tbaa !1
  %41 = getelementptr inbounds [100 x float]* @m, i32 0, i32 %4
  %42 = load volatile float* %41, align 4, !tbaa !1
  %43 = fadd float %40, %42
  %44 = getelementptr inbounds [100 x float]* @m, i32 0, i32 %8
  %45 = load volatile float* %44, align 4, !tbaa !1
  %46 = getelementptr inbounds [100 x float]* @m, i32 0, i32 %11
  %47 = load volatile float* %46, align 4, !tbaa !1
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds [100 x float]* @n, i32 0, i32 %i.05
  %50 = load volatile float* %49, align 4, !tbaa !1
  %51 = getelementptr inbounds [100 x float]* @n, i32 0, i32 %8
  %52 = load volatile float* %51, align 4, !tbaa !1
  %53 = getelementptr inbounds [100 x float]* @n, i32 0, i32 %11
  %54 = load volatile float* %53, align 4, !tbaa !1
  %55 = fadd float %52, %54
  %56 = fadd float %7, %14
  %57 = fadd float %21, %28
  %58 = fadd float %33, %38
  %59 = fadd float %43, %48
  %60 = fadd float %50, %55
  %61 = fadd float %56, %57
  %62 = fadd float %58, %59
  %63 = fadd float %60, 0.000000e+00
  %64 = getelementptr inbounds [100 x float]* @bb, i32 0, i32 %i.05
  store volatile float %61, float* %64, align 4, !tbaa !1
  %65 = fadd float %61, %62
  %66 = getelementptr inbounds [100 x float]* @aa, i32 0, i32 %i.05
  store volatile float %65, float* %66, align 4, !tbaa !1
  %67 = fadd float %65, %63
  %68 = getelementptr inbounds [100 x float]* @cc, i32 0, i32 %i.05
  store volatile float %67, float* %68, align 4, !tbaa !1
  %69 = bitcast i32 %sum.sroa.0.06 to float
  %70 = fadd float %69, %67
  %71 = sitofp i32 %i.05 to float
  %72 = fadd float %71, %70
  %73 = bitcast float %72 to i32
  %exitcond = icmp eq i32 %4, 40
  br i1 %exitcond, label %74, label %1

; <label>:74                                      ; preds = %1
  %.lcssa1 = phi i32 [ %73, %1 ]
  %.lcssa = phi float [ %72, %1 ]
  %75 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %.lcssa1) #2
  %76 = fpext float %.lcssa to double
  %77 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), double %76) #2
  %78 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str3, i32 0, i32 0), i32 %.lcssa1) #2
  %79 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 1183703040) #2
  %80 = fadd float %.lcssa, -1.816000e+04
  %81 = bitcast float %80 to i32
  %82 = fcmp ult float %80, 0.000000e+00
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %74
  %84 = fsub float -0.000000e+00, %80
  br label %85

; <label>:85                                      ; preds = %83, %74
  %86 = phi float [ %84, %83 ], [ %80, %74 ]
  %87 = bitcast float %86 to i32
  %88 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i32 %81) #2
  %89 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), i32 %87) #2
  %90 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), i32 897988541) #2
  %91 = fcmp ole float %86, 0x3EB0C6F7A0000000
  %92 = zext i1 %91 to i32
  %93 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0), i32 %92) #2
  br i1 %91, label %94, label %96

; <label>:94                                      ; preds = %85
  %95 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0)) #2
  br label %99

; <label>:96                                      ; preds = %85
  %97 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0), double %76) #2
  %98 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0)) #2
  br label %99

; <label>:99                                      ; preds = %96, %94
  %100 = fptosi float %.lcssa to i32
  ret i32 %100
}

declare void @__legup_label(i8*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"float", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
