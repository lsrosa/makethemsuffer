set_accelerator_function "jacobi_2d"
#loop_pipeline "loop"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1
loop_pipeline "l1"
loop_pipeline "l2"
loop_pipeline "l3"
