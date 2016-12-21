/*
__kernel void test1(int thread_id_from_which_to_print_message) {
  // Get index of the work item
  unsigned thread_id = get_global_id(0);

  if(thread_id == thread_id_from_which_to_print_message) {
    printf("Thread #%u: Hello from Altera's OpenCL Compiler!\n", thread_id);
  }
}
*/

__kernel void test1(
	__global double * x, // input vector
	__global double * y, // input vector
	__global double * r//, // result vector
	//uint n // input vector size
) {
  uint n =10;
  uint id = get_global_id(0);
	if ( id < n ){
		r[id] = x[id] * y[id]; // multiply elements, store product
		printf("r[%d]=%f\n", id, r[id]);
	} 
}