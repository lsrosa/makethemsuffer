#set_accelerator_function "add_int"
set_combine_basicblock 2
loop_pipeline "loop1"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1
#set_parameter ILP_DEBUG 1
set_parameter MODULO_SCHEDULER "ILP"

set_resource_constraint altfp_add 3
set_resource_constraint altfp_multiply 3
set_resource_constraint altfp_subtract 3
