/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module LogisimToplevelShell( FPGA_GlobalClock,
                             FPGA_INPUT_PIN_0,
                             FPGA_INPUT_PIN_1,
                             FPGA_INPUT_PIN_2,
                             FPGA_INPUT_PIN_3,
                             FPGA_INPUT_PIN_4,
                             FPGA_OUTPUT_PIN_0,
                             FPGA_OUTPUT_PIN_1);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_GlobalClock;
   input  FPGA_INPUT_PIN_0;
   input  FPGA_INPUT_PIN_1;
   input  FPGA_INPUT_PIN_2; 
   input  FPGA_INPUT_PIN_3; 
   input  FPGA_INPUT_PIN_4; 
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] FPGA_OUTPUT_PIN_0;
   output[7:0] FPGA_OUTPUT_PIN_1;



   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_FPGA_Tick;
   wire s_GO;
   wire[4:0] s_LOGISIM_CLOCK_TREE_0;
   wire[7:0] s_NA;
   wire s_RST;
   wire[7:0] s_SEG;
   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/
   assign s_GO = FPGA_INPUT_PIN_0;
   assign FPGA_OUTPUT_PIN_0 = s_SEG;
   assign FPGA_OUTPUT_PIN_1 = s_NA;
   assign s_RST = FPGA_INPUT_PIN_1;
   assign s_PC = FPGA_INPUT_PIN_2;
   assign s_timer = FPGA_INPUT_PIN_3;
   assign s_pinlv = FPGA_INPUT_PIN_4;
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/
   /***************************************************************************
    ** Here the clock tree components are defined                            **
    ***************************************************************************/
   LogisimTickGenerator #(.NrOfBits(32),
                          .ReloadValue(3125000))
      LogisimTickGenerator_0 (.FPGAClock(FPGA_GlobalClock),
                              .FPGATick(s_FPGA_Tick),
                              .pinlv(s_pinlv));
                              
   
   LogisimClockComponent #(.HighTicks(1),
                           .LowTicks(1),
                           .NrOfBits(1))
      CLOCKGEN_0 (.ClockBus(s_LOGISIM_CLOCK_TREE_0),
                  .ClockTick(s_FPGA_Tick),
                  .GlobalClock(FPGA_GlobalClock));


   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
   single_cycle_riscv      single_cycle_riscv_0 (
                                                 .GO(s_GO),
                                                 .LOGISIM_CLOCK_TREE_0(s_LOGISIM_CLOCK_TREE_0),
                                                 .NA(s_NA),
                                                 .RST(s_RST),
                                                 .SEG(s_SEG),
                                                 .PC(s_PC),
                                                 .timer(s_timer));


endmodule
