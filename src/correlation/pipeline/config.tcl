#set_accelerator_function "kernel_correlation"
set_combine_basicblock 2
loop_pipeline "loop1"
loop_pipeline "loop2"
loop_pipeline "loop3"
loop_pipeline "loop4"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1
