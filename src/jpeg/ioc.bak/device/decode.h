#ifndef _DECODE_H_
#define _DECODE_H_

#define NUM_HUFF_TBLS       2
#define NUM_QUANT_TBLS      4
#define DCTSIZE             8
#define DCTSIZE2           64


/*
 * Fix the number of components as 3
 */
#define NUM_COMPONENT       3

#define RGB_NUM  3

/*
 * Define the sample precision as 8
 */
#define IDCT_SHIFT 128
#define IDCT_BOUNT 255
#define MARKER_MARKER 0xff

/* SAMPLING_FACTOR */
#define SF1_1_1  0
#define SF4_1_1  2

__global char p_jinfo_data_precision;
__global short p_jinfo_image_height;
__global short p_jinfo_image_width;
__global char p_jinfo_num_components;
__global int p_jinfo_smp_fact;

__global char p_jinfo_comps_info_index[NUM_COMPONENT];
__global char p_jinfo_comps_info_id[NUM_COMPONENT];
__global char p_jinfo_comps_info_h_samp_factor[NUM_COMPONENT];
__global char p_jinfo_comps_info_v_samp_factor[NUM_COMPONENT];
__global char p_jinfo_comps_info_quant_tbl_no[NUM_COMPONENT];
__global char p_jinfo_comps_info_dc_tbl_no[NUM_COMPONENT];
__global char p_jinfo_comps_info_ac_tbl_no[NUM_COMPONENT];

unsigned int channel p_jinfo_quant_tbl_quantval[NUM_QUANT_TBLS][DCTSIZE2];

__global int p_jinfo_dc_xhuff_tbl_bits[NUM_HUFF_TBLS][36];
int channel p_jinfo_dc_xhuff_tbl_huffval[NUM_HUFF_TBLS][257];

__global int p_jinfo_ac_xhuff_tbl_bits[NUM_HUFF_TBLS][36];
__global int p_jinfo_ac_xhuff_tbl_huffval[NUM_HUFF_TBLS][257];

__global int p_jinfo_dc_dhuff_tbl_ml[NUM_HUFF_TBLS];
int channel p_jinfo_dc_dhuff_tbl_maxcode[NUM_HUFF_TBLS][36];
__global int p_jinfo_dc_dhuff_tbl_mincode[NUM_HUFF_TBLS][36];
__global int p_jinfo_dc_dhuff_tbl_valptr[NUM_HUFF_TBLS][36];

__global int p_jinfo_ac_dhuff_tbl_ml[NUM_HUFF_TBLS];
__global int p_jinfo_ac_dhuff_tbl_maxcode[NUM_HUFF_TBLS][36];
__global int p_jinfo_ac_dhuff_tbl_mincode[NUM_HUFF_TBLS][36];
int channel p_jinfo_ac_dhuff_tbl_valptr[NUM_HUFF_TBLS][36];

__global int p_jinfo_MCUWidth;
__global int p_jinfo_MCUHeight;
__global int p_jinfo_NumMCU;

unsigned char * channel p_jinfo_jpeg_data;

#endif /* _DECODE_H_ */
