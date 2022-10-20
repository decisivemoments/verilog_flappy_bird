///******************************************************************************
// ** Logisim goes FPGA automatic generated Verilog code                       **
// **                                                                          **
// ** Component : LogisimToplevelShell                                         **
// **                                                                          **
// ******************************************************************************/

//`timescale 1ns/1ps
//module LogisimToplevelShell( FPGA_GlobalClock,
//                             FPGA_INPUT_PIN_0,
//                             FPGA_INPUT_PIN_1,
//                             FPGA_OUTPUT_PIN_0,
//                             FPGA_OUTPUT_PIN_08,
//                             FPGA_OUTPUT_PIN_1,
//                             FPGA_OUTPUT_PIN_18);

//   /***************************************************************************
//    ** Here the inputs are defined                                           **
//    ***************************************************************************/
//   input  FPGA_GlobalClock;
//   input  FPGA_INPUT_PIN_0;
//   input  FPGA_INPUT_PIN_1;

//   /***************************************************************************
//    ** Here the outputs are defined                                          **
//    ***************************************************************************/
//   output[7:0] FPGA_OUTPUT_PIN_0;
//   output[7:0] FPGA_OUTPUT_PIN_08;
//   output[7:0] FPGA_OUTPUT_PIN_1;
//   output[7:0] FPGA_OUTPUT_PIN_18;

//   /***************************************************************************
//    ** Here the internal wires are defined                                   **
//    ***************************************************************************/
//   wire[31:0] s_;
//   wire s_FPGA_Tick;
//   wire s_GO;
//   wire[4:0] s_LOGISIM_CLOCK_TREE_0;
//   wire[7:0] s_NA;
//   wire s_RST;
//   wire[7:0] s_SEG;

//   /***************************************************************************
//    ** Here all signal adaptations are performed                             **
//    ***************************************************************************/
//   assign s_GO = FPGA_INPUT_PIN_0;
//   assign FPGA_OUTPUT_PIN_0 = s_SEG;
//   assign FPGA_OUTPUT_PIN_1 = s_NA;
//   assign s_RST = FPGA_INPUT_PIN_1;
//   /***************************************************************************
//    ** Here all inlined adaptations are performed                            **
//    ***************************************************************************/
//   /***************************************************************************
//    ** Here the clock tree components are defined                            **
//    ***************************************************************************/
//   LogisimTickGenerator #(.NrOfBits(32),
//                          .ReloadValue(390))
//      LogisimTickGenerator_0 (.FPGAClock(FPGA_GlobalClock),
//                              .FPGATick(s_FPGA_Tick));

//   LogisimClockComponent #(.HighTicks(1),
//                           .LowTicks(1),
//                           .NrOfBits(1))
//      CLOCKGEN_0 (.ClockBus(s_LOGISIM_CLOCK_TREE_0),
//                  .ClockTick(s_FPGA_Tick),
//                  .GlobalClock(FPGA_GlobalClock));


//   /***************************************************************************
//    ** Here the toplevel component is connected                              **
//    ***************************************************************************/
//   single_cycle_riscv      single_cycle_riscv_0 (.(s_),
//                                                 .GO(s_GO),
//                                                 .LOGISIM_CLOCK_TREE_0(s_LOGISIM_CLOCK_TREE_0),
//                                                 .NA(s_NA),
//                                                 .RST(s_RST),
//                                                 .SEG(s_SEG));


//endmodule



/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module LogisimToplevelShell(  FPGA_GlobalClock,
                              FPGA_INPUT_PIN_0,
                              FPGA_INPUT_PIN_1,
                              FPGA_OUTPUT_PIN_0,
                              FPGA_OUTPUT_PIN_1,
                              VGA_HS_O_one,
                              VGA_VS_O_one,
                              VGA_R_one,
                              VGA_G_one,
                              VGA_B_one,
                              buttonOn_one);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_GlobalClock;
   input  FPGA_INPUT_PIN_0;
   input  FPGA_INPUT_PIN_1;
   input  buttonOn_one;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] FPGA_OUTPUT_PIN_0;
   output[7:0] FPGA_OUTPUT_PIN_1;
   output wire VGA_HS_O_one;       // horizontal sync output
   output wire VGA_VS_O_one;       // vertical sync output
   output  [3:0] VGA_R_one;     // 4-bit VGA red output
   output  [3:0] VGA_G_one;     // 4-bit VGA green output
   output  [3:0] VGA_B_one;     // 4-bit VGA blue output


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

   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/
   /***************************************************************************
    ** Here the clock tree components are defined                            **
    ***************************************************************************/
   LogisimTickGenerator #(.NrOfBits(32),
                          .ReloadValue(2))
      LogisimTickGenerator_0 (.FPGAClock(FPGA_GlobalClock),
                              .FPGATick(s_FPGA_Tick));
                              
   //s_LOGISIM_CLOCK_TREE_0[4]是全局时钟
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
                                                 .VGA_HS_O(VGA_HS_O_one),
                                                 .VGA_VS_O(VGA_VS_O_one),
                                                 .VGA_R(VGA_R_one),
                                                 .VGA_G(VGA_G_one),
                                                 .VGA_B(VGA_B_one),
                                                 .buttonOn(buttonOn_one));


endmodule
