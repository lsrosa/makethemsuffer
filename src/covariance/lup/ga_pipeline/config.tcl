#set_accelerator_function "kernel_covariance"
set_combine_basicblock 2
loop_pipeline "loop1"
loop_pipeline "loop2"
loop_pipeline "loop3"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1
#set_parameter ILP_DEBUG 1
#set_parameter MODULO_SCHEDULER "ILP"
set_parameter GA_DEBUG 0
set_parameter MODULO_SCHEDULER "GA"
set_parameter GA_POPULATION_SIZE 1
set_parameter GA_MAXIMUM_GENERATIONS 1
set_parameter GA_MUTATION_PROB 1
#set_parameter GA_OFFSPRING_SIZE 10