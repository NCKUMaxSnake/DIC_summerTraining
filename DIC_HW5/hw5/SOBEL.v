
`timescale 1ns/10ps

module  SOBEL(clk,reset,busy,ready,iaddr,idata,cdata_rd,cdata_wr,caddr_rd,caddr_wr,cwr,crd,csel	);
	input				clk;
	input				reset;
	output				busy;	
	input				ready;	
	output 	[16:0]		iaddr;
	input  	[7:0]		idata;	
	input	[7:0]		cdata_rd;
	output	[7:0]		cdata_wr;
	output 	[15:0]		caddr_rd;
	output 	[15:0]		caddr_wr;
	output				cwr,crd;
	output 	[1:0]		csel;
	
endmodule




