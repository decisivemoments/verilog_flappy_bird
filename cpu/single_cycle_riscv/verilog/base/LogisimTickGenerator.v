/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimTickGenerator                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module LogisimTickGenerator( FPGAClock,
                             FPGATick,
                             pinlv);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter NrOfBits = 1;
   parameter ReloadValue = 1;

    assign reloadvalue2=pinlv ? 781250 : 3125000;
   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGAClock;
   input pinlv;
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output FPGATick;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[NrOfBits-1:0] reloadvalue2;
   wire[NrOfBits-1:0] s_count_next;
   wire s_tick_next;
   reg[NrOfBits-1:0] s_count_reg;
   reg s_tick_reg;


   /***************************************************************************
    ** Here the Output is defined                                            **
    ***************************************************************************/
   assign FPGATick = s_tick_reg;

   /***************************************************************************
    ** Here the update logic is defined                                      **
    ***************************************************************************/
   assign s_tick_next  = (s_count_reg == 0) ? 1'b1 : 1'b0;
   assign s_count_next = (s_count_reg == 0) ? reloadvalue2-1 : s_count_reg-1;

   /***************************************************************************
    ** Here the simulation only initial is defined                           **
    ***************************************************************************/
   initial
   begin
      s_count_reg = 0;
      s_tick_reg  = 1'b0;
   end

   /***************************************************************************
    ** Here the flipflops are defined                                        **
    ***************************************************************************/
   always @(posedge FPGAClock)
   begin
       s_count_reg <= s_count_next;
       s_tick_reg  <= s_tick_next;
   end

endmodule
