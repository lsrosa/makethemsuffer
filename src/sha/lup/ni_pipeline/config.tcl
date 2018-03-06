set_accelerator_function "sha"
set_combine_basicblock 2
loop_pipeline "loop1"
loop_pipeline "loop2"
loop_pipeline "loop3"
loop_pipeline "loop4"
#loop_pipeline "loop5"
loop_pipeline "loop6"
#loop_pipeline "loop7"
loop_pipeline "loop8"
loop_pipeline "loop9"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1
#set_parameter ILP_DEBUG 1
#set_parameter MODULO_SCHEDULER "ILP"
set_parameter MODULO_SCHEDULER "NI"
#set_parameter NI_DEBUG 1

set_resource_constraint add 3
set_resource_constraint multiply 3
set_resource_constraint divide 3
#set_resource_constraint mem_dual_port 2
#set_resource_constraint modulus 1
#set_resource_constraint altfp_subtract 3
set_resource_constraint altfp_add 3
set_resource_constraint altfp_multiply 3
set_resource_constraint altfp_divide 3
set_parameter SOLVER "GUROBI"
