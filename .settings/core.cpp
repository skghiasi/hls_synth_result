
#include <hls_stream.h>
#include <ap_int.h>

using namespace hls;


struct ap_axis{
	ap_uint<512> data;
	ap_uint<1> last;
	ap_uint<64> keep;
};

void docompute(stream <ap_axis> &input , stream<ap_axis> &output){

#pragma HLS INTERFACE axis register both port=output
#pragma HLS INTERFACE axis register both port=input
#pragma HLS INTERFACE s_axilite port=return bundle=control

}
