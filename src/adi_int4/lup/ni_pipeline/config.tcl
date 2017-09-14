#set_accelerator_function "add_int"
set_combine_basicblock 2
loop_pipeline "loop1"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1
set_parameter MODULO_SCHEDULER "NI"
#set_parameter NI_DEBUG 1

#set_parameter GA_POPULATION_SIZE 2
#set_parameter GA_MAXIMUM_GENERATIONS 1
#set_parameter GA_MUTATION_PROB 1
#set_parameter GA_OFFSPRING_SIZE 1
