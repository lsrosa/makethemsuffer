#set_accelerator_function "kernel_covariance"
set_combine_basicblock 2
loop_pipeline "loop1"
loop_pipeline "loop2"
loop_pipeline "loop3"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1