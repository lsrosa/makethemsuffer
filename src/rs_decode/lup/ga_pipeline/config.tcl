set_combine_basicblock 2
#set_accelerator_function "rs_decode"
#set_parameter ILP_DEBUG 1
#set_parameter MODULO_SCHEDULER "ILP"
set_parameter GA_DEBUG 0
set_parameter MODULO_SCHEDULER "GA"
set_parameter GA_POPULATION_SIZE 1
set_parameter GA_MAXIMUM_GENERATIONS 1
set_parameter GA_MUTATION_PROB 1
#set_parameter GA_OFFSPRING_SIZE 10
loop_pipeline "Syn_Init"
loop_pipeline "Syn_Outer"
loop_pipeline "Syn_Inner"
loop_pipeline "compute_deriv"
loop_pipeline "error_mag"
loop_pipeline "error_mag2"
loop_pipeline "gfmult_array_array_hw"
loop_pipeline "gfmult_scalar_array_hw1"
loop_pipeline "gfmult_scalar_array_hw2"
loop_pipeline "gfadd_array_array_hw1"
loop_pipeline "gfadd_array_array_hw2"
loop_pipeline "gfsum_array_hw"
loop_pipeline "BerlInit"
loop_pipeline "BerlOuter"
loop_pipeline "BerlShift"
loop_pipeline "BerlSimple2"
loop_pipeline "BerlCopy"
loop_pipeline "Chien_AssignInArray"
loop_pipeline "Chien_Inner1"
loop_pipeline "Chien_Inner2"
loop_pipeline "Chien_AssignOutArray"
loop_pipeline "rs_fifo"
loop_pipeline "Error_Correct"
loop_pipeline "Simple_rs1"
#set_parameter "processor" "host"
set_parameter LOCAL_RAMS 1
