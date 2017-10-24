#set_accelerator_function "fft"
set_combine_basicblock 2
loop_pipeline "loop2"
#loop_pipeline "loop3"
#loop_pipeline "loop4"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1
set_parameter MODULO_SCHEDULER "NI"
#set_parameter NI_DEBUG 1
