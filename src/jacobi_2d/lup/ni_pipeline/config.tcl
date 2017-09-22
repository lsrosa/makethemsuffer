set_accelerator_function "jacobi_2d"
set_combine_basicblock 2
loop_pipeline "loop1"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1
set_parameter MODULO_SCHEDULER "NI"


set_resource_constraint altfp_add 3
set_resource_constraint multiply 3
set_resource_constraint divide 3
#set_resource_constraint mem_dual_port 2
#set_resource_constraint modulus 1
#set_resource_constraint altfp_subtract 3
set_resource_constraint altfp_add 3
set_resource_constraint altfp_multiply 1
set_resource_constraint altfp_divide 3
