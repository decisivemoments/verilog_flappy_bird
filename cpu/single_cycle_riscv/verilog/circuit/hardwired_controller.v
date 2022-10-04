/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : hardwired_controller                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module hardwired_controller( Funct,
                             IR21,
                             LOGISIM_CLOCK_TREE_0,
                             OP,
                             ALU_OP,
                             ALU_SRC,
                             AUIPC,
                             BLT,
                             Beq,
                             Bne,
                             CSRRCI,
                             CSRRSI,
                             JAL,
                             Jalr,
                             LBU,
                             MemToReg,
                             MemWrite,
                             RegWrite,
                             SRA,
                             S_type,
                             ecall,
                             rs1_used,
                             rs2_used,
                             uret);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  Funct;
   input  IR21;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[4:0]  OP;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] ALU_OP;
   output ALU_SRC;
   output AUIPC;
   output BLT;
   output Beq;
   output Bne;
   output CSRRCI;
   output CSRRSI;
   output JAL;
   output Jalr;
   output LBU;
   output MemToReg;
   output MemWrite;
   output RegWrite;
   output SRA;
   output S_type;
   output ecall;
   output rs1_used;
   output rs2_used;
   output uret;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_33;
   wire[4:0] s_LOGISIM_BUS_34;
   wire[4:0] s_LOGISIM_BUS_37;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_34[4:0]              = Funct;
   assign s_LOGISIM_NET_43                   = IR21;
   assign s_LOGISIM_BUS_37[4:0]              = OP;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign rs1_used                           = s_LOGISIM_NET_19;
   assign S_type                             = s_LOGISIM_NET_12;
   assign JAL                                = s_LOGISIM_NET_17;
   assign uret                               = s_LOGISIM_NET_39;
   assign Beq                                = s_LOGISIM_NET_44;
   assign ecall                              = s_LOGISIM_NET_14;
   assign MemWrite                           = s_LOGISIM_NET_20;
   assign rs2_used                           = s_LOGISIM_NET_11;
   assign SRA                                = s_LOGISIM_NET_18;
   assign Jalr                               = s_LOGISIM_NET_35;
   assign RegWrite                           = s_LOGISIM_NET_36;
   assign Bne                                = s_LOGISIM_NET_21;
   assign ALU_OP                             = s_LOGISIM_BUS_33[3:0];
   assign MemToReg                           = s_LOGISIM_NET_46;
   assign ALU_SRC                            = s_LOGISIM_NET_22;
   assign CSRRSI                             = s_LOGISIM_NET_47;
   assign AUIPC                              = s_LOGISIM_NET_42;
   assign BLT                                = s_LOGISIM_NET_10;
   assign CSRRCI                             = s_LOGISIM_NET_45;
   assign LBU                                = s_LOGISIM_NET_38;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_43),
              .Input_2(s_LOGISIM_NET_13),
              .Result(s_LOGISIM_NET_39));

   AND_GATE #(.BubblesMask(1))
      GATE_2 (.Input_1(s_LOGISIM_NET_43),
              .Input_2(s_LOGISIM_NET_13),
              .Result(s_LOGISIM_NET_14));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   arithmetic_controller      arithmetic_controller_1 (.F12(s_LOGISIM_BUS_34[0]),
                                                       .F13(s_LOGISIM_BUS_34[1]),
                                                       .F14(s_LOGISIM_BUS_34[2]),
                                                       .F25(s_LOGISIM_BUS_34[3]),
                                                       .F30(s_LOGISIM_BUS_34[4]),
                                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                       .OP2(s_LOGISIM_BUS_37[0]),
                                                       .OP3(s_LOGISIM_BUS_37[1]),
                                                       .OP4(s_LOGISIM_BUS_37[2]),
                                                       .OP5(s_LOGISIM_BUS_37[3]),
                                                       .OP6(s_LOGISIM_BUS_37[4]),
                                                       .S0(s_LOGISIM_BUS_33[0]),
                                                       .S1(s_LOGISIM_BUS_33[1]),
                                                       .S2(s_LOGISIM_BUS_33[2]),
                                                       .S3(s_LOGISIM_BUS_33[3]));

   signal_generator      signal_generator_1 (.ALU_SRC(s_LOGISIM_NET_22),
                                             .AUIPC(s_LOGISIM_NET_42),
                                             .BEQ(s_LOGISIM_NET_44),
                                             .BLT(s_LOGISIM_NET_10),
                                             .BNE(s_LOGISIM_NET_21),
                                             .CSRRCI(),
                                             .CSRRSI(),
                                             .F12(s_LOGISIM_BUS_34[0]),
                                             .F13(s_LOGISIM_BUS_34[1]),
                                             .F14(s_LOGISIM_BUS_34[2]),
                                             .F25(s_LOGISIM_BUS_34[3]),
                                             .F30(s_LOGISIM_BUS_34[4]),
                                             .JAL(s_LOGISIM_NET_17),
                                             .JALR(s_LOGISIM_NET_35),
                                             .LBU(s_LOGISIM_NET_38),
                                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                             .MemToReg(s_LOGISIM_NET_46),
                                             .MemWrite(s_LOGISIM_NET_20),
                                             .OP2(s_LOGISIM_BUS_37[0]),
                                             .OP3(s_LOGISIM_BUS_37[1]),
                                             .OP4(s_LOGISIM_BUS_37[2]),
                                             .OP5(s_LOGISIM_BUS_37[3]),
                                             .OP6(s_LOGISIM_BUS_37[4]),
                                             .RegWrite(s_LOGISIM_NET_36),
                                             .SRA(s_LOGISIM_NET_18),
                                             .S_Type(s_LOGISIM_NET_12),
                                             .ecall(s_LOGISIM_NET_13),
                                             .r1_used(s_LOGISIM_NET_19),
                                             .r2_used(s_LOGISIM_NET_11));



endmodule
