set_combine_basicblock 2
loop_pipeline "loop"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1

# resource constraints to make modulo scheduling difficult
set_resource_constraint add 3
set_resource_constraint multiply 3
set_resource_constraint divide 4
set_resource_constraint altfp_add 3
set_resource_constraint altfp_multiply 3
set_resource_constraint altfp_divide 3
set_operation_latency divide 64

set_parameter GA_DEBUG 0
set_parameter MODULO_SCHEDULER "GA"
set_parameter GA_POPULATION_SIZE 1
set_parameter GA_MAXIMUM_GENERATIONS 1
set_parameter GA_MUTATION_PROB 1
