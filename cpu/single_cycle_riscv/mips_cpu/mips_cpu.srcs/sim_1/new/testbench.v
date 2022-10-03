/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module tetsbench( 
//FPGA_GlobalClock,
//                             FPGA_INPUT_PIN_0,
//                             FPGA_INPUT_PIN_1,
//                             FPGA_OUTPUT_PIN_0,

//                             FPGA_OUTPUT_PIN_1
);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
//   input  FPGA_GlobalClock;
//   input  FPGA_INPUT_PIN_0;
//   input  FPGA_INPUT_PIN_1;
    
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   wire[7:0] FPGA_OUTPUT_PIN_0;
   wire[7:0] FPGA_OUTPUT_PIN_1;

    reg FPGA_GlobalClock;
    reg FPGA_INPUT_PIN_0;
    reg FPGA_INPUT_PIN_1;
    initial 
    begin
        FPGA_GlobalClock=0;
        FPGA_INPUT_PIN_0=0;
        FPGA_INPUT_PIN_1=0;
    end
    always
        #1 FPGA_GlobalClock=~FPGA_GlobalClock;
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
                                                 .SEG(s_SEG));


endmodule
