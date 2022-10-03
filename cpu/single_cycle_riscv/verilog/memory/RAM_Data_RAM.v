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
                     q);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[9:0]  addr;
   input  clk;
   input tick;
   input[31:0]  d;
   input  we;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] q;

	reg  [31:0]mem[2**9:0];
	always @ (posedge clk && tick) begin
		if (we)
			mem[addr] <= d;
	end
	assign q = mem[addr];

endmodule
