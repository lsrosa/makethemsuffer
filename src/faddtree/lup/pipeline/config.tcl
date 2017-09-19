set_combine_basicblock 2
loop_pipeline "loop"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1

# resource constraints to make modulo scheduling difficult
set_resource_constraint altfp_add 1
set_operation_latency altfp_add 13

# Runtime analysis - incremental SDC
set_parameter INCREMENTAL_SDC 0