set_combine_basicblock 2
loop_pipeline "loop"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1

# resource constraints to make modulo scheduling difficult
set_resource_constraint divide 3
set_operation_latency divide 64
set_resource_constraint add 3

set_parameter MODULO_SCHEDULER "ILP"
