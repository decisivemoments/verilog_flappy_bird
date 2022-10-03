/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : single_cycle_riscv                                           **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module single_cycle_riscv( GO,
                           LOGISIM_CLOCK_TREE_0,
                           RST,
                           NA,
                           SEG,
                           PC,
                           timer);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  GO;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  RST;
   input  PC;
   input timer;
   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] NA;
   output[7:0] SEG;
   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_0;
   wire[11:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_100;
   wire[19:0] s_LOGISIM_BUS_101;
   wire[31:0] s_LOGISIM_BUS_106;
   wire[4:0] s_LOGISIM_BUS_107;
   wire[4:0] s_LOGISIM_BUS_108;
   wire[31:0] s_LOGISIM_BUS_109;
   wire[2:0] s_LOGISIM_BUS_110;
   wire[4:0] s_LOGISIM_BUS_113;
   wire[3:0] s_LOGISIM_BUS_114;
   wire[5:0] s_LOGISIM_BUS_115;
   wire[6:0] s_LOGISIM_BUS_117;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_32;
//   wire[7:0] s_LOGISIM_BUS_34;
   wire[11:0] s_LOGISIM_BUS_35;
   wire[4:0] s_LOGISIM_BUS_36;
   wire[31:0] s_LOGISIM_BUS_37;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[4:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_46;
   wire[31:0] s_LOGISIM_BUS_48;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_50;
   wire[31:0] s_LOGISIM_BUS_53;
   wire[7:0] s_LOGISIM_BUS_55;
   wire[4:0] s_LOGISIM_BUS_56;
   wire[31:0] s_LOGISIM_BUS_57;
   wire[31:0] s_LOGISIM_BUS_59;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_60;
   wire[31:0] s_LOGISIM_BUS_61;
   wire[31:0] s_LOGISIM_BUS_65;
   wire[11:0] s_LOGISIM_BUS_66;
   wire[7:0] s_LOGISIM_BUS_69;
   wire[31:0] s_LOGISIM_BUS_73;
   wire[31:0] s_LOGISIM_BUS_74;
   wire[9:0] s_LOGISIM_BUS_75;
   wire[31:0] s_LOGISIM_BUS_76;
   wire[31:0] s_LOGISIM_BUS_77;
   wire[7:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_80;
   wire[31:0] s_LOGISIM_BUS_83;
   wire[4:0] s_LOGISIM_BUS_84;
   wire[19:0] s_LOGISIM_BUS_86;
   wire[31:0] s_LOGISIM_BUS_87;
   wire[31:0] s_LOGISIM_BUS_89;
   wire[7:0] s_LOGISIM_BUS_91;
   wire[31:0] s_LOGISIM_BUS_95;
   wire[31:0] s_LOGISIM_BUS_96;
   wire[4:0] s_LOGISIM_BUS_99;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_103;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_85;
   wire s_LOGISIM_NET_88;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_92;
   wire s_LOGISIM_NET_93;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_98;
   wire [31:0]digin;
   
   wire [31:0]s_LOGISIM_BUS_64;
   wire [31:0]s_LOGISIM_BUS_67;
   /***************************************************************************
    ** Here all clock generator connections are defined                      **
    ***************************************************************************/
//   assign s_LOGISIM_NET_103                  = LOGISIM_CLOCK_TREE_0[0];

   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_NET_13                   = s_LOGISIM_BUS_2[20];
   assign s_LOGISIM_BUS_101[10]              = s_LOGISIM_NET_13;
//   assign s_LOGISIM_BUS_34[0]                = s_LOGISIM_BUS_53[16];
//   assign s_LOGISIM_BUS_34[0]                = s_LOGISIM_BUS_53[24];
//   assign s_LOGISIM_BUS_34[1]                = s_LOGISIM_BUS_53[17];
//   assign s_LOGISIM_BUS_34[1]                = s_LOGISIM_BUS_53[25];
//   assign s_LOGISIM_BUS_34[2]                = s_LOGISIM_BUS_53[18];
//   assign s_LOGISIM_BUS_34[2]                = s_LOGISIM_BUS_53[26];
//   assign s_LOGISIM_BUS_34[3]                = s_LOGISIM_BUS_53[19];
//   assign s_LOGISIM_BUS_34[3]                = s_LOGISIM_BUS_53[27];
//   assign s_LOGISIM_BUS_34[4]                = s_LOGISIM_BUS_53[20];
//   assign s_LOGISIM_BUS_34[4]                = s_LOGISIM_BUS_53[28];
//   assign s_LOGISIM_BUS_34[5]                = s_LOGISIM_BUS_53[21];
//   assign s_LOGISIM_BUS_34[5]                = s_LOGISIM_BUS_53[29];
//   assign s_LOGISIM_BUS_34[6]                = s_LOGISIM_BUS_53[22];
//   assign s_LOGISIM_BUS_34[6]                = s_LOGISIM_BUS_53[30];
//   assign s_LOGISIM_BUS_34[7]                = s_LOGISIM_BUS_53[23];
//   assign s_LOGISIM_BUS_34[7]                = s_LOGISIM_BUS_53[31];
   assign s_LOGISIM_NET_41                   = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_1[11]                = s_LOGISIM_NET_41;
   assign s_LOGISIM_BUS_55[0]                = s_LOGISIM_BUS_2[12];
   assign s_LOGISIM_BUS_101[11]              = s_LOGISIM_BUS_55[0];
   assign s_LOGISIM_BUS_55[1]                = s_LOGISIM_BUS_2[13];
   assign s_LOGISIM_BUS_101[12]              = s_LOGISIM_BUS_55[1];
   assign s_LOGISIM_BUS_55[2]                = s_LOGISIM_BUS_2[14];
   assign s_LOGISIM_BUS_101[13]              = s_LOGISIM_BUS_55[2];
   assign s_LOGISIM_BUS_55[3]                = s_LOGISIM_BUS_2[15];
   assign s_LOGISIM_BUS_101[14]              = s_LOGISIM_BUS_55[3];
   assign s_LOGISIM_BUS_55[4]                = s_LOGISIM_BUS_2[16];
   assign s_LOGISIM_BUS_101[15]              = s_LOGISIM_BUS_55[4];
   assign s_LOGISIM_BUS_55[5]                = s_LOGISIM_BUS_2[17];
   assign s_LOGISIM_BUS_101[16]              = s_LOGISIM_BUS_55[5];
   assign s_LOGISIM_BUS_55[6]                = s_LOGISIM_BUS_2[18];
   assign s_LOGISIM_BUS_101[17]              = s_LOGISIM_BUS_55[6];
   assign s_LOGISIM_BUS_55[7]                = s_LOGISIM_BUS_2[19];
   assign s_LOGISIM_BUS_101[18]              = s_LOGISIM_BUS_55[7];
   assign s_LOGISIM_BUS_75[0]                = s_LOGISIM_BUS_2[21];
   assign s_LOGISIM_BUS_101[0]               = s_LOGISIM_BUS_75[0];
   assign s_LOGISIM_BUS_75[1]                = s_LOGISIM_BUS_2[22];
   assign s_LOGISIM_BUS_101[1]               = s_LOGISIM_BUS_75[1];
   assign s_LOGISIM_BUS_75[2]                = s_LOGISIM_BUS_2[23];
   assign s_LOGISIM_BUS_101[2]               = s_LOGISIM_BUS_75[2];
   assign s_LOGISIM_BUS_75[3]                = s_LOGISIM_BUS_2[24];
   assign s_LOGISIM_BUS_101[3]               = s_LOGISIM_BUS_75[3];
   assign s_LOGISIM_BUS_75[4]                = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_101[4]               = s_LOGISIM_BUS_75[4];
   assign s_LOGISIM_BUS_75[5]                = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_101[5]               = s_LOGISIM_BUS_75[5];
   assign s_LOGISIM_BUS_75[6]                = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_101[6]               = s_LOGISIM_BUS_75[6];
   assign s_LOGISIM_BUS_75[7]                = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_101[7]               = s_LOGISIM_BUS_75[7];
   assign s_LOGISIM_BUS_75[8]                = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_101[8]               = s_LOGISIM_BUS_75[8];
   assign s_LOGISIM_BUS_75[9]                = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_101[9]               = s_LOGISIM_BUS_75[9];
   assign s_LOGISIM_NET_85                   = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_101[19]              = s_LOGISIM_NET_85;
   assign s_LOGISIM_BUS_86[0]                = s_LOGISIM_BUS_2[12];
   assign s_LOGISIM_BUS_73[12]               = s_LOGISIM_BUS_86[0];
   assign s_LOGISIM_BUS_86[1]                = s_LOGISIM_BUS_2[13];
   assign s_LOGISIM_BUS_73[13]               = s_LOGISIM_BUS_86[1];
   assign s_LOGISIM_BUS_86[2]                = s_LOGISIM_BUS_2[14];
   assign s_LOGISIM_BUS_73[14]               = s_LOGISIM_BUS_86[2];
   assign s_LOGISIM_BUS_86[3]                = s_LOGISIM_BUS_2[15];
   assign s_LOGISIM_BUS_73[15]               = s_LOGISIM_BUS_86[3];
   assign s_LOGISIM_BUS_86[4]                = s_LOGISIM_BUS_2[16];
   assign s_LOGISIM_BUS_73[16]               = s_LOGISIM_BUS_86[4];
   assign s_LOGISIM_BUS_86[5]                = s_LOGISIM_BUS_2[17];
   assign s_LOGISIM_BUS_73[17]               = s_LOGISIM_BUS_86[5];
   assign s_LOGISIM_BUS_86[6]                = s_LOGISIM_BUS_2[18];
   assign s_LOGISIM_BUS_73[18]               = s_LOGISIM_BUS_86[6];
   assign s_LOGISIM_BUS_86[7]                = s_LOGISIM_BUS_2[19];
   assign s_LOGISIM_BUS_73[19]               = s_LOGISIM_BUS_86[7];
   assign s_LOGISIM_BUS_86[8]                = s_LOGISIM_BUS_2[20];
   assign s_LOGISIM_BUS_73[20]               = s_LOGISIM_BUS_86[8];
   assign s_LOGISIM_BUS_86[9]                = s_LOGISIM_BUS_2[21];
   assign s_LOGISIM_BUS_73[21]               = s_LOGISIM_BUS_86[9];
   assign s_LOGISIM_BUS_86[10]               = s_LOGISIM_BUS_2[22];
   assign s_LOGISIM_BUS_73[22]               = s_LOGISIM_BUS_86[10];
   assign s_LOGISIM_BUS_86[11]               = s_LOGISIM_BUS_2[23];
   assign s_LOGISIM_BUS_73[23]               = s_LOGISIM_BUS_86[11];
   assign s_LOGISIM_BUS_86[12]               = s_LOGISIM_BUS_2[24];
   assign s_LOGISIM_BUS_73[24]               = s_LOGISIM_BUS_86[12];
   assign s_LOGISIM_BUS_86[13]               = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_73[25]               = s_LOGISIM_BUS_86[13];
   assign s_LOGISIM_BUS_86[14]               = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_73[26]               = s_LOGISIM_BUS_86[14];
   assign s_LOGISIM_BUS_86[15]               = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_73[27]               = s_LOGISIM_BUS_86[15];
   assign s_LOGISIM_BUS_86[16]               = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_73[28]               = s_LOGISIM_BUS_86[16];
   assign s_LOGISIM_BUS_86[17]               = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_73[29]               = s_LOGISIM_BUS_86[17];
   assign s_LOGISIM_BUS_86[18]               = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_73[30]               = s_LOGISIM_BUS_86[18];
   assign s_LOGISIM_BUS_86[19]               = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_73[31]               = s_LOGISIM_BUS_86[19];
   assign s_LOGISIM_NET_92                   = s_LOGISIM_BUS_2[7];
   assign s_LOGISIM_BUS_1[10]                = s_LOGISIM_NET_92;
   assign s_LOGISIM_BUS_110[0]               = s_LOGISIM_BUS_2[12];
   assign s_LOGISIM_BUS_36[0]                = s_LOGISIM_BUS_110[0];
   assign s_LOGISIM_BUS_110[1]               = s_LOGISIM_BUS_2[13];
   assign s_LOGISIM_BUS_36[1]                = s_LOGISIM_BUS_110[1];
   assign s_LOGISIM_BUS_110[2]               = s_LOGISIM_BUS_2[14];
   assign s_LOGISIM_BUS_36[2]                = s_LOGISIM_BUS_110[2];
   assign s_LOGISIM_NET_111                  = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_36[4]                = s_LOGISIM_NET_111;
   assign s_LOGISIM_BUS_113[0]               = s_LOGISIM_BUS_2[7];
   assign s_LOGISIM_BUS_66[0]                = s_LOGISIM_BUS_113[0];
   assign s_LOGISIM_BUS_113[1]               = s_LOGISIM_BUS_2[8];
   assign s_LOGISIM_BUS_66[1]                = s_LOGISIM_BUS_113[1];
   assign s_LOGISIM_BUS_113[2]               = s_LOGISIM_BUS_2[9];
   assign s_LOGISIM_BUS_66[2]                = s_LOGISIM_BUS_113[2];
   assign s_LOGISIM_BUS_113[3]               = s_LOGISIM_BUS_2[10];
   assign s_LOGISIM_BUS_66[3]                = s_LOGISIM_BUS_113[3];
   assign s_LOGISIM_BUS_113[4]               = s_LOGISIM_BUS_2[11];
   assign s_LOGISIM_BUS_66[4]                = s_LOGISIM_BUS_113[4];
   assign s_LOGISIM_BUS_114[0]               = s_LOGISIM_BUS_2[8];
   assign s_LOGISIM_BUS_1[0]                 = s_LOGISIM_BUS_114[0];
   assign s_LOGISIM_BUS_114[1]               = s_LOGISIM_BUS_2[9];
   assign s_LOGISIM_BUS_1[1]                 = s_LOGISIM_BUS_114[1];
   assign s_LOGISIM_BUS_114[2]               = s_LOGISIM_BUS_2[10];
   assign s_LOGISIM_BUS_1[2]                 = s_LOGISIM_BUS_114[2];
   assign s_LOGISIM_BUS_114[3]               = s_LOGISIM_BUS_2[11];
   assign s_LOGISIM_BUS_1[3]                 = s_LOGISIM_BUS_114[3];
   assign s_LOGISIM_BUS_115[0]               = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_1[4]                 = s_LOGISIM_BUS_115[0];
   assign s_LOGISIM_BUS_115[1]               = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_1[5]                 = s_LOGISIM_BUS_115[1];
   assign s_LOGISIM_BUS_115[2]               = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_1[6]                 = s_LOGISIM_BUS_115[2];
   assign s_LOGISIM_BUS_115[3]               = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_1[7]                 = s_LOGISIM_BUS_115[3];
   assign s_LOGISIM_BUS_115[4]               = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_1[8]                 = s_LOGISIM_BUS_115[4];
   assign s_LOGISIM_BUS_115[5]               = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_1[9]                 = s_LOGISIM_BUS_115[5];
   assign s_LOGISIM_BUS_117[0]               = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_66[5]                = s_LOGISIM_BUS_117[0];
   assign s_LOGISIM_BUS_117[1]               = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_66[6]                = s_LOGISIM_BUS_117[1];
   assign s_LOGISIM_BUS_117[2]               = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_66[7]                = s_LOGISIM_BUS_117[2];
   assign s_LOGISIM_BUS_117[3]               = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_66[8]                = s_LOGISIM_BUS_117[3];
   assign s_LOGISIM_BUS_117[4]               = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_66[9]                = s_LOGISIM_BUS_117[4];
   assign s_LOGISIM_BUS_117[5]               = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_66[10]               = s_LOGISIM_BUS_117[5];
   assign s_LOGISIM_BUS_117[6]               = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_66[11]               = s_LOGISIM_BUS_117[6];
   assign s_LOGISIM_NET_118                  = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_36[3]                = s_LOGISIM_NET_118;

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_82                   = RST;
   assign s_LOGISIM_NET_98                   = GO;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign SEG                                = s_LOGISIM_BUS_69[7:0];
   assign NA                                 = s_LOGISIM_BUS_91[7:0];
  

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_73[11:0] = 12'd0;

   assign s_LOGISIM_BUS_109[31:0] = 32'd4;

   assign s_LOGISIM_BUS_99[4:0] = 5'd10;

   assign s_LOGISIM_NET_67 = 1'd0;

   assign s_LOGISIM_NET_68 = 1'd0;

   assign s_LOGISIM_BUS_80[31:0] = 32'd34;

   assign s_LOGISIM_NET_28 = 1'd0;

   assign s_LOGISIM_BUS_107[4:0] = 5'd1;

   assign s_LOGISIM_NET_93 = 1'd0;

   assign s_LOGISIM_BUS_84[4:0] = 5'd17;

   assign s_LOGISIM_NET_71 = 1'd0;

   assign s_LOGISIM_NET_42 = 1'd1;

   assign s_LOGISIM_NET_63 = 1'd0;

   assign s_LOGISIM_NET_102 = 1'd1;

   assign s_LOGISIM_NET_88 = 1'd0;

   assign s_LOGISIM_NET_79 = 1'd0;

   assign s_LOGISIM_NET_43 = 1'd0;

   assign s_LOGISIM_BUS_108[4:0] = 5'd1;

   assign s_LOGISIM_NET_52 = 1'd1;

   assign s_LOGISIM_BUS_77[31:0] = 32'h fffffffe;

   assign s_LOGISIM_NET_27 = 1'd0;

   assign s_LOGISIM_NET_81 = 1'd1;



   assign s_LOGISIM_BUS_67[31:0] = 32'd0;
   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_2 #(.NrOfBits(12))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[31:20]),
             .MuxIn_1(s_LOGISIM_BUS_66[11:0]),
             .MuxOut(s_LOGISIM_BUS_35[11:0]),
             .Sel(s_LOGISIM_NET_12));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(s_LOGISIM_NET_68),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_6[31:0]),
                 .DataB(s_LOGISIM_BUS_100[31:0]),
                 .Result(s_LOGISIM_BUS_37[31:0]));

   Multiplexer_bus_4 #(.NrOfBits(8))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_53[7:0]),
             .MuxIn_1(s_LOGISIM_BUS_53[15:8]),
//             .MuxIn_2(s_LOGISIM_BUS_34[7:0]),
//             .MuxIn_3(s_LOGISIM_BUS_34[7:0]),
             .MuxIn_2(s_LOGISIM_BUS_53[23:16]),
             .MuxIn_3(s_LOGISIM_BUS_53[31:24]),
             .MuxOut(s_LOGISIM_BUS_8[7:0]),
             .Sel(s_LOGISIM_BUS_57[1:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_46[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_48[31:0]),
             .MuxOut(s_LOGISIM_BUS_59[31:0]),
             .Sel(s_LOGISIM_NET_19));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_96[31:0]),
                 .Result(s_LOGISIM_BUS_6[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_108[4:0]));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_2 (.CarryIn(s_LOGISIM_NET_27),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_100[31:0]),
                 .DataB(s_LOGISIM_BUS_109[31:0]),
                 .Result(s_LOGISIM_BUS_61[31:0]));

   Bit_Extender_8_32      BitExtender_1 (.imm_in(s_LOGISIM_BUS_8[7:0]),
                                         .imm_out(s_LOGISIM_BUS_65[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_16),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_89[31:0]),
                    .DataB(s_LOGISIM_BUS_80[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_16),
              .Input_2(s_LOGISIM_NET_29),
              .Result(s_LOGISIM_NET_18));

   Bit_Extender_12_32_SIGN      BitExtender_2 (.imm_in(s_LOGISIM_BUS_1[11:0]),
                                               .imm_out(s_LOGISIM_BUS_96[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_78),
              .Input_2(s_LOGISIM_NET_72),
              .Result(s_LOGISIM_NET_25));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[19:15]),
             .MuxIn_1(s_LOGISIM_BUS_84[4:0]),
             .MuxOut(s_LOGISIM_BUS_45[4:0]),
             .Sel(s_LOGISIM_NET_29));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[24:20]),
             .MuxIn_1(s_LOGISIM_BUS_99[4:0]),
             .MuxOut(s_LOGISIM_BUS_56[4:0]),
             .Sel(s_LOGISIM_NET_29));

   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_20),
                       .D(s_LOGISIM_NET_102),
                       .Q(s_LOGISIM_NET_70),
                       .Reset(s_LOGISIM_NET_33),
                       .Tick(LOGISIM_CLOCK_TREE_0[3]),
                       .cs(s_LOGISIM_NET_43),
                       .pre(s_LOGISIM_NET_71));
       assign digin=(PC) ? s_LOGISIM_BUS_2[31:0] : (timer ? s_LOGISIM_BUS_64[31:0] :s_LOGISIM_BUS_76[31:0]); //输出PC的控制信号
       FPGADigit      FPGADigit_1 (.AN(s_LOGISIM_BUS_91[7:0]),
                                   .SEG(s_LOGISIM_BUS_69[7:0]),
                                   .clkx(LOGISIM_CLOCK_TREE_0[4]),
//                                   .dig(s_LOGISIM_BUS_76[31:0])
                                   .dig(digin[31:0]));

   RAM_Data_RAM      RAM_1 (.addr(s_LOGISIM_BUS_57[11:2]),
                            .clk(LOGISIM_CLOCK_TREE_0[4]),
                            .tick(LOGISIM_CLOCK_TREE_0[2]),
                            .d(s_LOGISIM_BUS_83[31:0]),
                            .q(s_LOGISIM_BUS_53[31:0]),
                            .we(s_LOGISIM_NET_15));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_87[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_3[31:0]),
             .MuxOut(s_LOGISIM_BUS_46[31:0]),
             .Sel(s_LOGISIM_NET_11));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_29),
              .Input_2(s_LOGISIM_NET_104),
              .Result(s_LOGISIM_NET_20));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_3 (.CarryIn(s_LOGISIM_NET_67),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_5[31:0]),
                 .DataB(s_LOGISIM_BUS_100[31:0]),
                 .Result(s_LOGISIM_BUS_3[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_57[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_53[31:0]),
             .MuxOut(s_LOGISIM_BUS_4[31:0]),
             .Sel(s_LOGISIM_NET_21));

   Bit_Extender_12_32_SIGN      BitExtender_3 (.imm_in(s_LOGISIM_BUS_35[11:0]),
                                               .imm_out(s_LOGISIM_BUS_50[31:0]));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_4 (.Input_1(s_LOGISIM_BUS_57[31:0]),
              .Input_2(s_LOGISIM_BUS_77[31:0]),
              .Result(s_LOGISIM_BUS_48[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_18),
                       .D(s_LOGISIM_BUS_83[31:0]),
                       .Q(s_LOGISIM_BUS_76[31:0]),
                       .Reset(s_LOGISIM_NET_82),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]),
                       .cs(s_LOGISIM_NET_63),
                       .pre(s_LOGISIM_NET_93));

   OR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_11),
              .Input_2(s_LOGISIM_NET_19),
              .Result(s_LOGISIM_NET_47));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_4 (.CarryIn(s_LOGISIM_NET_79),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_73[31:0]),
                 .DataB(s_LOGISIM_BUS_100[31:0]),
                 .Result(s_LOGISIM_BUS_60[31:0]));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_2 (.DataA(s_LOGISIM_BUS_95[31:0]),
                 .Result(s_LOGISIM_BUS_5[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_107[4:0]));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_NET_70),
                         .Result(s_LOGISIM_NET_30));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_94),
              .Result(s_LOGISIM_NET_62));

   Bit_Extender_20_32_SIGN      BitExtender_4 (.imm_in(s_LOGISIM_BUS_101[19:0]),
                                               .imm_out(s_LOGISIM_BUS_95[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_74[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_65[31:0]),
             .MuxOut(s_LOGISIM_BUS_32[31:0]),
             .Sel(s_LOGISIM_NET_51));

   AND_GATE #(.BubblesMask(1))
      GATE_8 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_7));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_83[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_50[31:0]),
             .MuxOut(s_LOGISIM_BUS_38[31:0]),
             .Sel(s_LOGISIM_NET_24));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_61[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_37[31:0]),
              .MuxOut(s_LOGISIM_BUS_87[31:0]),
              .Sel(s_LOGISIM_NET_97));

   ROM_Order_ROM      ROM_1 (.Address(s_LOGISIM_BUS_100[11:2]),
                             .Data(s_LOGISIM_BUS_2[31:0]));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_NET_16),
                         .Result(s_LOGISIM_NET_104));

   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_30),
                       .D(s_LOGISIM_BUS_59[31:0]),
                       .Q(s_LOGISIM_BUS_100[31:0]),
                       .Reset(s_LOGISIM_NET_82),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]),
                       .cs(s_LOGISIM_NET_88),
                       .pre(s_LOGISIM_NET_28));

   OR_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_98),
               .Input_2(s_LOGISIM_NET_82),
               .Result(s_LOGISIM_NET_33));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_61[31:0]),
              .MuxOut(s_LOGISIM_BUS_74[31:0]),
              .Sel(s_LOGISIM_NET_47));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_32[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_60[31:0]),
              .MuxOut(s_LOGISIM_BUS_106[31:0]),
              .Sel(s_LOGISIM_NET_58));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_62),
               .Input_2(s_LOGISIM_NET_7),
               .Input_3(s_LOGISIM_NET_25),
               .Result(s_LOGISIM_NET_97));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   hardwired_controller      hardwired_controller_1 (.ALU_OP(s_LOGISIM_BUS_0[3:0]),
                                                     .ALU_SRC(s_LOGISIM_NET_24),
                                                     .AUIPC(s_LOGISIM_NET_58),
                                                     .BLT(s_LOGISIM_NET_78),
                                                     .Beq(s_LOGISIM_NET_94),
                                                     .Bne(s_LOGISIM_NET_17),
                                                     .CSRRCI(),
                                                     .CSRRSI(),
                                                     .Funct(s_LOGISIM_BUS_36[4:0]),
                                                     .IR21(s_LOGISIM_BUS_2[21]),
                                                     .JAL(s_LOGISIM_NET_11),
                                                     .Jalr(s_LOGISIM_NET_19),
                                                     .LBU(s_LOGISIM_NET_51),
                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                     .MemToReg(s_LOGISIM_NET_21),
                                                     .MemWrite(s_LOGISIM_NET_15),
                                                     .OP(s_LOGISIM_BUS_2[6:2]),
                                                     .RegWrite(s_LOGISIM_NET_23),
                                                     .SRA(s_LOGISIM_NET_90),
                                                     .S_type(s_LOGISIM_NET_12),
                                                     .ecall(s_LOGISIM_NET_29),
                                                     .rs1_used(),
                                                     .rs2_used(),
                                                     .uret(s_LOGISIM_NET_31));

//   RegFIle      RegFIle_1 (.Clk(s_LOGISIM_NET_103),
//                           .Din(s_LOGISIM_BUS_106[31:0]),
//                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
//                           .R1(s_LOGISIM_BUS_89[31:0]),
//                           .R1Adr(s_LOGISIM_BUS_45[4:0]),
//                           .R2(s_LOGISIM_BUS_83[31:0]),
//                           .R2Adr(s_LOGISIM_BUS_56[4:0]),
//                           .WAdr(s_LOGISIM_BUS_2[11:7]),
//                           .WE(s_LOGISIM_NET_23));
   regfile1      regfile0(.clk(LOGISIM_CLOCK_TREE_0[4]),
                           .wdata(s_LOGISIM_BUS_106[31:0]),
                           .wen(s_LOGISIM_NET_23),
                           .tick(LOGISIM_CLOCK_TREE_0[2]),
                           .rdata1(s_LOGISIM_BUS_89[31:0]),
                           .raddr1(s_LOGISIM_BUS_45[4:0]),
                           .rdata2(s_LOGISIM_BUS_83[31:0]),
                           .raddr2(s_LOGISIM_BUS_56[4:0]),
                           .waddr(s_LOGISIM_BUS_2[11:7]));
 
   ALU      ALU_1 (.AluOP(s_LOGISIM_BUS_0[3:0]),
                   .Equal(s_LOGISIM_NET_10),
                   .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                   .Result(s_LOGISIM_BUS_57[31:0]),
                   .Result_2(),
                   .X(s_LOGISIM_BUS_89[31:0]),
                   .Y(s_LOGISIM_BUS_38[31:0]),
                   .bigger_equal(),
                   .smaller(s_LOGISIM_NET_72));
                   
      
      LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(1),
                    .width(32))
      COUNTER_1 (.ClockEnable(LOGISIM_CLOCK_TREE_0[2]),
                 .CompareOut(),
                 .Enable(s_LOGISIM_NET_30),
                 .CountValue(s_LOGISIM_BUS_64[31:0]),
                 .GlobalClock(LOGISIM_CLOCK_TREE_0[4]),
                 .LoadData(s_LOGISIM_BUS_67[31:0]),
                 .Up_n_Down(1),
                 .clear(s_LOGISIM_NET_82),
                 .load(s_LOGISIM_NET_67),
                 .pre(s_LOGISIM_NET_67));



endmodule
