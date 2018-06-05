set_combine_basicblock 2
loop_pipeline "loop"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1

# resource constraints to make modulo scheduling difficult
set_resource_constraint divide 3
set_resource_constraint add 3
set_resource_constraint multiply 1
set_operation_latency signed_multiply 18

# Runtime analysis - incremental SDC
#set_parameter INCREMENTAL_SDC 1
set_parameter GA_DEBUG 0
set_parameter MODULO_SCHEDULER "GA"
set_parameter GA_POPULATION_SIZE 1
set_parameter GA_MAXIMUM_GENERATIONS 1
set_parameter GA_MUTATION_PROB 1
set_parameter SOLVER "GUROBI"
