#set_parameter INCREMENTAL_SDC 1
#set_accelerator_function "kernel_covariance"
set_combine_basicblock 2
loop_pipeline "loop1"
loop_pipeline "loop2"
loop_pipeline "loop3"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1

set_resource_constraint add 3
set_resource_constraint multiply 3
set_resource_constraint divide 3
set_resource_constraint altfp_add 1
set_resource_constraint altfp_multiply 1
set_resource_constraint altfp_divide 3
set_parameter SOLVER "GUROBI"


set_parameter GA_DEBUG 0
set_parameter MODULO_SCHEDULER "GA"
set_parameter GA_POPULATION_SIZE 1
set_parameter GA_MAXIMUM_GENERATIONS 1
set_parameter GA_MUTATION_PROB 1
#set_parameter GA_OFFSPRING_SIZE 10
