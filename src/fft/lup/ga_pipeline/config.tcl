  #set_accelerator_function "fft"
  set_combine_basicblock 2
  loop_pipeline "loop2"
  loop_pipeline "loop3"
  loop_pipeline "loop4"
#set_parameter "processor" "host"
#set_parameter LOCAL_RAMS 1
#set_parameter ILP_DEBUG 1
#set_parameter MODULO_SCHEDULER "ILP"
set_parameter GA_DEBUG 0
set_parameter MODULO_SCHEDULER "GA"
set_parameter GA_POPULATION_SIZE 1
set_parameter GA_MAXIMUM_GENERATIONS 1
set_parameter GA_MUTATION_PROB 1
#set_parameter GA_OFFSPRING_SIZE 10

set_resource_constraint altfp_add 3
set_resource_constraint multiply 1
set_resource_constraint divide 3
#set_resource_constraint mem_dual_port 2
#set_resource_constraint modulus 1
#set_resource_constraint altfp_subtract 3
set_resource_constraint altfp_add 3
set_resource_constraint altfp_multiply 3
set_resource_constraint altfp_divide 3
