#set_parameter LOCAL_RAMS 1
loop_pipeline "loop0"
loop_pipeline "loop1"
loop_pipeline "loop2"
loop_pipeline "loop3"
loop_pipeline "loop4"
loop_pipeline "loop5"
loop_pipeline "loop6"
loop_pipeline "loop7"
loop_pipeline "loop8"
loop_pipeline "loop9"
loop_pipeline "loop10"
loop_pipeline "loop11"
loop_pipeline "loop12"
loop_pipeline "loop13"
loop_pipeline "loop14"
loop_pipeline "loop15"
loop_pipeline "loop16"
loop_pipeline "loop17"
loop_pipeline "loop18"
loop_pipeline "loop19"
loop_pipeline "loop20"
loop_pipeline "loop21"
loop_pipeline "loop22"
loop_pipeline "loop23"
loop_pipeline "loop24"
loop_pipeline "loop25"
loop_pipeline "loop26"
loop_pipeline "loop27"
loop_pipeline "loop28"
loop_pipeline "loop29"
loop_pipeline "loop30"
loop_pipeline "loop31"
loop_pipeline "loop32"
loop_pipeline "loop33"
loop_pipeline "loop34"
loop_pipeline "loop35"


set_resource_constraint add 10

set_combine_basicblock 2
#loop_pipeline "loop0"
set_parameter MODULO_SCHEDULER "SDC"
set_parameter SOLVER "GUROBI"

