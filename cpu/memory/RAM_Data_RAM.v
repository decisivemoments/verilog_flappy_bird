///******************************************************************************
// ** Logisim goes FPGA automatic generated Verilog code                       **
// **                                                                          **
// ** Component : RAM_Data_RAM                                                 **
// **                                                                          **
// ******************************************************************************/

//`timescale 1ns/1ps
//module RAM_Data_RAM( addr,
//                     clk,
//                     d,
//                     we,
//                     q);

//   /***************************************************************************
//    ** Here the inputs are defined                                           **
//    ***************************************************************************/
//   input[9:0]  addr;
//   input  clk;
//   input[31:0]  d;
//   input  we;

//   /***************************************************************************
//    ** Here the outputs are defined                                          **
//    ***************************************************************************/
//   output[31:0] q;

//	reg [9:0] mem[31:0];
//	always @ (posedge clk) begin
//		if (we)
//			mem[addr] <= d;
//	end
//	assign q = mem[addr];

//endmodule
/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RAM_Data_RAM                                                 **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module RAM_Data_RAM( addr,
                     tick,
                     clk,
                     d,
                     we,
                     vgaaddr,
                     q,
                     vgavalue);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
    //address:: one int
   input[11:0]  addr;
   input  clk;
   input tick;
   input[31:0]  d;
   input  we;
   input[11:0] vgaaddr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] q;
   output[31:0] vgavalue;

	reg  [31:0]mem[2**12-1:0];
	always @ (posedge clk && tick) begin
		if (we)
			mem[addr] <= d;
	end
	assign q = mem[addr];

   assign vgavalue = mem[vgaaddr];

endmodule
