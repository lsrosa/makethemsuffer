#set_accelerator_function "rs_decode"
#loop_pipeline "loop"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1

loop_pipeline "Syn_Init"
loop_pipeline "Syn_Outer"
loop_pipeline "Syn_Inner"
loop_pipeline "Rs_fifo"
loop_pipeline "Error_Correct"
loop_pipeline "Chien_AssignInArray"
loop_pipeline "Chien_Inner1"
loop_pipeline "Chien_Inner2"
loop_pipeline "Chien_AssignOutArray"
