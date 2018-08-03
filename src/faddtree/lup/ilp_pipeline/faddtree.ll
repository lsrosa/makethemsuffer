; ModuleID = 'faddtree.bc'
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
@"Global Shared RAM" = internal constant [18 x i8] c"Global Shared RAM\00"

; Function Attrs: nounwind
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %sum.sroa.0.06 = phi i32 [ 0, %0 ], [ %53, %1 ], !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %2 = phi i32 [ 0, %0 ], [ %11, %1 ], !legup.canonical_induction !4, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep = getelementptr [100 x float]* @cc, i32 0, i32 %2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep2 = getelementptr [100 x float]* @aa, i32 0, i32 %2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep3 = getelementptr [100 x float]* @bb, i32 0, i32 %2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep4 = getelementptr [100 x float]* @n, i32 0, i32 %2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep5 = getelementptr [100 x float]* @m, i32 0, i32 %2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep6 = getelementptr [100 x float]* @c, i32 0, i32 %2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %3 = add i32 %2, 7, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep7 = getelementptr [100 x float]* @b, i32 0, i32 %3, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %4 = add i32 %2, 6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !5
  %scevgep8 = getelementptr [100 x float]* @b, i32 0, i32 %4, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !5
  %5 = add i32 %2, 5, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %scevgep9 = getelementptr [100 x float]* @b, i32 0, i32 %5, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %6 = add i32 %2, 4, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %scevgep10 = getelementptr [100 x float]* @b, i32 0, i32 %6, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %7 = add i32 %2, 3, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep11 = getelementptr [100 x float]* @n, i32 0, i32 %7, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep12 = getelementptr [100 x float]* @m, i32 0, i32 %7, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep13 = getelementptr [100 x float]* @c, i32 0, i32 %7, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep14 = getelementptr [100 x float]* @a, i32 0, i32 %7, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %8 = add i32 %2, 2, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %scevgep15 = getelementptr [100 x float]* @n, i32 0, i32 %8, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %scevgep16 = getelementptr [100 x float]* @m, i32 0, i32 %8, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %scevgep17 = getelementptr [100 x float]* @c, i32 0, i32 %8, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %scevgep18 = getelementptr [100 x float]* @a, i32 0, i32 %8, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !4, !legup.pipeline.stage !5
  %9 = add i32 %2, 1, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep19 = getelementptr [100 x float]* @m, i32 0, i32 %9, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep20 = getelementptr [100 x float]* @c, i32 0, i32 %9, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep21 = getelementptr [100 x float]* @a, i32 0, i32 %9, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %scevgep22 = getelementptr [100 x float]* @a, i32 0, i32 %2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) #2, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !5, !legup.pipeline.stage !5
  %10 = load volatile float* %scevgep22, align 4, !tbaa !6, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !5
  %11 = add nsw i32 %2, 1, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !5
  %12 = load volatile float* %scevgep21, align 4, !tbaa !6, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !12, !legup.pipeline.stage !5
  %13 = fadd float %10, %12, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !5
  %14 = load volatile float* %scevgep18, align 4, !tbaa !6, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !11, !legup.pipeline.stage !5
  %15 = load volatile float* %scevgep14, align 4, !tbaa !6, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !5
  %16 = fadd float %14, %15, !legup.pipeline.start_time !11, !legup.pipeline.avail_time !16, !legup.pipeline.stage !5
  %17 = load volatile float* %scevgep10, align 4, !tbaa !6, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !17, !legup.pipeline.stage !5
  %18 = load volatile float* %scevgep9, align 4, !tbaa !6, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !15, !legup.pipeline.stage !5
  %19 = fadd float %17, %18, !legup.pipeline.start_time !12, !legup.pipeline.avail_time !13, !legup.pipeline.stage !5
  %20 = load volatile float* %scevgep8, align 4, !tbaa !6, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !19, !legup.pipeline.stage !5
  %21 = load volatile float* %scevgep7, align 4, !tbaa !6, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !14, !legup.pipeline.stage !5
  %22 = fadd float %20, %21, !legup.pipeline.start_time !14, !legup.pipeline.avail_time !21, !legup.pipeline.stage !5
  %23 = load volatile float* %scevgep6, align 4, !tbaa !6, !legup.pipeline.start_time !15, !legup.pipeline.avail_time !17, !legup.pipeline.stage !5
  %24 = load volatile float* %scevgep20, align 4, !tbaa !6, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !14, !legup.pipeline.stage !5
  %25 = fadd float %23, %24, !legup.pipeline.start_time !17, !legup.pipeline.avail_time !22, !legup.pipeline.stage !5
  %26 = load volatile float* %scevgep17, align 4, !tbaa !6, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !10, !legup.pipeline.stage !5
  %27 = load volatile float* %scevgep13, align 4, !tbaa !6, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !10, !legup.pipeline.stage !5
  %28 = fadd float %26, %27, !legup.pipeline.start_time !10, !legup.pipeline.avail_time !23, !legup.pipeline.stage !5
  %29 = load volatile float* %scevgep5, align 4, !tbaa !6, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !18, !legup.pipeline.stage !5
  %30 = load volatile float* %scevgep19, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !3, !legup.pipeline.stage !5
  %31 = fadd float %29, %30, !legup.pipeline.start_time !20, !legup.pipeline.avail_time !24, !legup.pipeline.stage !5
  %32 = load volatile float* %scevgep16, align 4, !tbaa !6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !20, !legup.pipeline.stage !5
  %33 = load volatile float* %scevgep12, align 4, !tbaa !6, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !19, !legup.pipeline.stage !5
  %34 = fadd float %32, %33, !legup.pipeline.start_time !19, !legup.pipeline.avail_time !25, !legup.pipeline.stage !5
  %35 = load volatile float* %scevgep4, align 4, !tbaa !6, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !20, !legup.pipeline.stage !5
  %36 = load volatile float* %scevgep15, align 4, !tbaa !6, !legup.pipeline.start_time !4, !legup.pipeline.avail_time !18, !legup.pipeline.stage !5
  %37 = load volatile float* %scevgep11, align 4, !tbaa !6, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !3, !legup.pipeline.stage !5
  %38 = fadd float %36, %37, !legup.pipeline.start_time !18, !legup.pipeline.avail_time !26, !legup.pipeline.stage !5
  %39 = fadd float %13, %16, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !27, !legup.pipeline.stage !5
  %40 = fadd float %19, %22, !legup.pipeline.start_time !13, !legup.pipeline.avail_time !27, !legup.pipeline.stage !5
  %41 = fadd float %25, %28, !legup.pipeline.start_time !22, !legup.pipeline.avail_time !28, !legup.pipeline.stage !5
  %42 = fadd float %31, %34, !legup.pipeline.start_time !25, !legup.pipeline.avail_time !29, !legup.pipeline.stage !5
  %43 = fadd float %35, %38, !legup.pipeline.start_time !26, !legup.pipeline.avail_time !30, !legup.pipeline.stage !5
  %44 = fadd float %39, %40, !legup.pipeline.start_time !27, !legup.pipeline.avail_time !31, !legup.pipeline.stage !4
  %45 = fadd float %41, %42, !legup.pipeline.start_time !27, !legup.pipeline.avail_time !31, !legup.pipeline.stage !4
  %46 = fadd float %43, 0.000000e+00, !legup.pipeline.start_time !30, !legup.pipeline.avail_time !32, !legup.pipeline.stage !4
  store volatile float %44, float* %scevgep3, align 4, !tbaa !6, !legup.pipeline.start_time !31, !legup.pipeline.avail_time !33, !legup.pipeline.stage !4
  %47 = fadd float %44, %45, !legup.pipeline.start_time !31, !legup.pipeline.avail_time !34, !legup.pipeline.stage !4
  store volatile float %47, float* %scevgep2, align 4, !tbaa !6, !legup.pipeline.start_time !34, !legup.pipeline.avail_time !35, !legup.pipeline.stage !3
  %48 = fadd float %47, %46, !legup.pipeline.start_time !34, !legup.pipeline.avail_time !36, !legup.pipeline.stage !3
  store volatile float %48, float* %scevgep, align 4, !tbaa !6, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !37, !legup.pipeline.stage !3
  %49 = bitcast i32 %sum.sroa.0.06 to float, !legup.pipeline.start_time !2, !legup.pipeline.avail_time !2, !legup.pipeline.stage !3
  %50 = fadd float %49, %48, !legup.pipeline.start_time !36, !legup.pipeline.avail_time !38, !legup.pipeline.stage !3
  %51 = sitofp i32 %2 to float, !legup.pipeline.start_time !5, !legup.pipeline.avail_time !14, !legup.pipeline.stage !5
  %52 = fadd float %51, %50, !legup.pipeline.start_time !38, !legup.pipeline.avail_time !39, !legup.pipeline.stage !18
  %53 = bitcast float %52 to i32, !legup.pipeline.start_time !39, !legup.pipeline.avail_time !39, !legup.pipeline.stage !18
  %exitcond1 = icmp eq i32 %11, 40, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !5
  br i1 %exitcond1, label %54, label %1, !legup.pipelined !4, !legup.II !40, !legup.totalTime !41, !legup.maxStage !18, !legup.tripCount !42, !legup.label !43, !legup.pipeline.start_time !3, !legup.pipeline.avail_time !3, !legup.pipeline.stage !5

; <label>:54                                      ; preds = %1
  %55 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i32 %53) #2
  %56 = fpext float %52 to double
  %57 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), double %56) #2
  %58 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str3, i32 0, i32 0), i32 %53) #2
  %59 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 1183703040) #2
  %60 = fadd float %52, -1.816000e+04
  %61 = bitcast float %60 to i32
  %62 = fcmp ult float %60, 0.000000e+00
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %54
  %64 = fsub float -0.000000e+00, %60
  br label %65

; <label>:65                                      ; preds = %63, %54
  %66 = phi float [ %64, %63 ], [ %60, %54 ]
  %67 = bitcast float %66 to i32
  %68 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i32 %61) #2
  %69 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), i32 %67) #2
  %70 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), i32 897988541) #2
  %71 = fcmp ole float %66, 0x3EB0C6F7A0000000
  %72 = zext i1 %71 to i32
  %73 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0), i32 %72) #2
  br i1 %71, label %74, label %76

; <label>:74                                      ; preds = %65
  %75 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0)) #2
  br label %79

; <label>:76                                      ; preds = %65
  %77 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0), double %56) #2
  %78 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0)) #2
  br label %79

; <label>:79                                      ; preds = %76, %74
  %80 = fptosi float %52 to i32
  ret i32 %80
}

declare void @__legup_label(i8*) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!legup.pipeline = !{!1}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
!1 = metadata !{metadata !"II", metadata !"27"}
!2 = metadata !{metadata !"75"}
!3 = metadata !{metadata !"2"}
!4 = metadata !{metadata !"1"}
!5 = metadata !{metadata !"0"}
!6 = metadata !{metadata !7, metadata !7, i64 0}
!7 = metadata !{metadata !"float", metadata !8, i64 0}
!8 = metadata !{metadata !"omnipotent char", metadata !9, i64 0}
!9 = metadata !{metadata !"Simple C/C++ TBAA"}
!10 = metadata !{metadata !"7"}
!11 = metadata !{metadata !"9"}
!12 = metadata !{metadata !"11"}
!13 = metadata !{metadata !"24"}
!14 = metadata !{metadata !"6"}
!15 = metadata !{metadata !"8"}
!16 = metadata !{metadata !"22"}
!17 = metadata !{metadata !"10"}
!18 = metadata !{metadata !"3"}
!19 = metadata !{metadata !"5"}
!20 = metadata !{metadata !"4"}
!21 = metadata !{metadata !"19"}
!22 = metadata !{metadata !"23"}
!23 = metadata !{metadata !"20"}
!24 = metadata !{metadata !"17"}
!25 = metadata !{metadata !"18"}
!26 = metadata !{metadata !"16"}
!27 = metadata !{metadata !"37"}
!28 = metadata !{metadata !"36"}
!29 = metadata !{metadata !"31"}
!30 = metadata !{metadata !"29"}
!31 = metadata !{metadata !"50"}
!32 = metadata !{metadata !"42"}
!33 = metadata !{metadata !"51"}
!34 = metadata !{metadata !"63"}
!35 = metadata !{metadata !"64"}
!36 = metadata !{metadata !"76"}
!37 = metadata !{metadata !"77"}
!38 = metadata !{metadata !"89"}
!39 = metadata !{metadata !"102"}
!40 = metadata !{metadata !"27"}
!41 = metadata !{metadata !"103"}
!42 = metadata !{metadata !"40"}
!43 = metadata !{metadata !"loop"}
