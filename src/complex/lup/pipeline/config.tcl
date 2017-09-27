# resource constraints to make modulo scheduling difficult
#set_resource_constraint add 3
set_resource_constraint multiply 3
set_resource_constraint divide 3
set_resource_constraint altfp_add 3
set_resource_constraint altfp_multiply 3
set_resource_constraint altfp_divide 3
set_operation_latency multiply 18

set_parameter SDC_PRIORITY 0

set_combine_basicblock 2
loop_pipeline "loop"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1
set_parameter SOLVER "GUROBI"
