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
                           VGA_HS_O,
                           VGA_VS_O,
                           VGA_R,
                           VGA_G,
                           VGA_B,
                           buttonOn);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  GO;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  RST;
   input buttonOn;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] NA;
   output[7:0] SEG;
   output wire VGA_HS_O;       // horizontal sync output
   output wire VGA_VS_O;       // vertical sync output
   output reg [3:0] VGA_R;     // 4-bit VGA red output
   output reg [3:0] VGA_G;     // 4-bit VGA green output
   output reg [3:0] VGA_B;     // 4-bit VGA blue output

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_0;
   wire[11:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_102;
   wire[31:0] s_LOGISIM_BUS_103;
   wire[4:0] s_LOGISIM_BUS_106;
   wire[31:0] s_LOGISIM_BUS_107;
   wire[19:0] s_LOGISIM_BUS_108;
   wire[31:0] s_LOGISIM_BUS_113;
   wire[4:0] s_LOGISIM_BUS_114;
   wire[4:0] s_LOGISIM_BUS_115;
   wire[31:0] s_LOGISIM_BUS_116;
   wire[2:0] s_LOGISIM_BUS_118;
   wire[4:0] s_LOGISIM_BUS_122;
   wire[6:0] s_LOGISIM_BUS_123;
   wire[5:0] s_LOGISIM_BUS_124;
   wire[3:0] s_LOGISIM_BUS_125;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_33;
   wire[11:0] s_LOGISIM_BUS_36;
   wire[4:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[4:0] s_LOGISIM_BUS_48;
   wire[31:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_51;
   wire[31:0] s_LOGISIM_BUS_54;
   wire[31:0] s_LOGISIM_BUS_57;
   wire[7:0] s_LOGISIM_BUS_59;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[4:0] s_LOGISIM_BUS_60;
   wire[31:0] s_LOGISIM_BUS_61;
   wire[31:0] s_LOGISIM_BUS_63;
   wire[15:0] s_LOGISIM_BUS_64;
   wire[31:0] s_LOGISIM_BUS_65;
   wire[31:0] s_LOGISIM_BUS_66;
   wire[31:0] s_LOGISIM_BUS_70;
   wire[11:0] s_LOGISIM_BUS_71;
   wire[7:0] s_LOGISIM_BUS_74;
   wire[31:0] s_LOGISIM_BUS_78;
   wire[31:0] s_LOGISIM_BUS_79;
   wire[7:0] s_LOGISIM_BUS_8;
   wire[9:0] s_LOGISIM_BUS_80;
   wire[31:0] s_LOGISIM_BUS_81;
   wire[31:0] s_LOGISIM_BUS_82;
   wire[31:0] s_LOGISIM_BUS_85;
   wire[31:0] s_LOGISIM_BUS_88;
   wire[4:0] s_LOGISIM_BUS_89;
   wire[19:0] s_LOGISIM_BUS_91;
   wire[31:0] s_LOGISIM_BUS_92;
   wire[31:0] s_LOGISIM_BUS_95;
   wire[15:0] s_LOGISIM_BUS_96;
   wire[7:0] s_LOGISIM_BUS_98;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_119;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_121;
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
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_84;
   wire s_LOGISIM_NET_86;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_90;
   wire s_LOGISIM_NET_94;
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_99;

   wire[19:0] vgaaddress;
   reg [11:0] colour;
   wire [31:0] vgavaluefromaddr;
   reg highorlow;
   initial
   begin
      highorlow=0;
   end
   wire active;
   always @ (posedge LOGISIM_CLOCK_TREE_0[4])
   begin
      if(active)
      begin
         if(highorlow)
         begin   
            colour <= vgavaluefromaddr[15:4];
            highorlow<=~highorlow;
         end
         else
         begin
            colour <= vgavaluefromaddr[31:20];
            highorlow<=~highorlow;
         end
      end
      else
         colour <=0;
      VGA_R <= colour[11:8];
      VGA_G <= colour[7:4];
      VGA_B <= colour[3:0];
   end
   /***************************************************************************
    ** Here all clock generator connections are defined                      **
    ***************************************************************************/
//   assign s_LOGISIM_NET_110                  = LOGISIM_CLOCK_TREE_0[0];

   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_NET_13                   = s_LOGISIM_BUS_2[20];
   assign s_LOGISIM_BUS_108[10]              = s_LOGISIM_NET_13;
   assign s_LOGISIM_NET_43                   = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_1[11]                = s_LOGISIM_NET_43;
   assign s_LOGISIM_BUS_59[0]                = s_LOGISIM_BUS_2[12];
   assign s_LOGISIM_BUS_108[11]              = s_LOGISIM_BUS_59[0];
   assign s_LOGISIM_BUS_59[1]                = s_LOGISIM_BUS_2[13];
   assign s_LOGISIM_BUS_108[12]              = s_LOGISIM_BUS_59[1];
   assign s_LOGISIM_BUS_59[2]                = s_LOGISIM_BUS_2[14];
   assign s_LOGISIM_BUS_108[13]              = s_LOGISIM_BUS_59[2];
   assign s_LOGISIM_BUS_59[3]                = s_LOGISIM_BUS_2[15];
   assign s_LOGISIM_BUS_108[14]              = s_LOGISIM_BUS_59[3];
   assign s_LOGISIM_BUS_59[4]                = s_LOGISIM_BUS_2[16];
   assign s_LOGISIM_BUS_108[15]              = s_LOGISIM_BUS_59[4];
   assign s_LOGISIM_BUS_59[5]                = s_LOGISIM_BUS_2[17];
   assign s_LOGISIM_BUS_108[16]              = s_LOGISIM_BUS_59[5];
   assign s_LOGISIM_BUS_59[6]                = s_LOGISIM_BUS_2[18];
   assign s_LOGISIM_BUS_108[17]              = s_LOGISIM_BUS_59[6];
   assign s_LOGISIM_BUS_59[7]                = s_LOGISIM_BUS_2[19];
   assign s_LOGISIM_BUS_108[18]              = s_LOGISIM_BUS_59[7];
   assign s_LOGISIM_BUS_80[0]                = s_LOGISIM_BUS_2[21];
   assign s_LOGISIM_BUS_108[0]               = s_LOGISIM_BUS_80[0];
   assign s_LOGISIM_BUS_80[1]                = s_LOGISIM_BUS_2[22];
   assign s_LOGISIM_BUS_108[1]               = s_LOGISIM_BUS_80[1];
   assign s_LOGISIM_BUS_80[2]                = s_LOGISIM_BUS_2[23];
   assign s_LOGISIM_BUS_108[2]               = s_LOGISIM_BUS_80[2];
   assign s_LOGISIM_BUS_80[3]                = s_LOGISIM_BUS_2[24];
   assign s_LOGISIM_BUS_108[3]               = s_LOGISIM_BUS_80[3];
   assign s_LOGISIM_BUS_80[4]                = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_108[4]               = s_LOGISIM_BUS_80[4];
   assign s_LOGISIM_BUS_80[5]                = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_108[5]               = s_LOGISIM_BUS_80[5];
   assign s_LOGISIM_BUS_80[6]                = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_108[6]               = s_LOGISIM_BUS_80[6];
   assign s_LOGISIM_BUS_80[7]                = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_108[7]               = s_LOGISIM_BUS_80[7];
   assign s_LOGISIM_BUS_80[8]                = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_108[8]               = s_LOGISIM_BUS_80[8];
   assign s_LOGISIM_BUS_80[9]                = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_108[9]               = s_LOGISIM_BUS_80[9];
   assign s_LOGISIM_NET_90                   = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_108[19]              = s_LOGISIM_NET_90;
   assign s_LOGISIM_BUS_91[0]                = s_LOGISIM_BUS_2[12];
   assign s_LOGISIM_BUS_78[12]               = s_LOGISIM_BUS_91[0];
   assign s_LOGISIM_BUS_91[1]                = s_LOGISIM_BUS_2[13];
   assign s_LOGISIM_BUS_78[13]               = s_LOGISIM_BUS_91[1];
   assign s_LOGISIM_BUS_91[2]                = s_LOGISIM_BUS_2[14];
   assign s_LOGISIM_BUS_78[14]               = s_LOGISIM_BUS_91[2];
   assign s_LOGISIM_BUS_91[3]                = s_LOGISIM_BUS_2[15];
   assign s_LOGISIM_BUS_78[15]               = s_LOGISIM_BUS_91[3];
   assign s_LOGISIM_BUS_91[4]                = s_LOGISIM_BUS_2[16];
   assign s_LOGISIM_BUS_78[16]               = s_LOGISIM_BUS_91[4];
   assign s_LOGISIM_BUS_91[5]                = s_LOGISIM_BUS_2[17];
   assign s_LOGISIM_BUS_78[17]               = s_LOGISIM_BUS_91[5];
   assign s_LOGISIM_BUS_91[6]                = s_LOGISIM_BUS_2[18];
   assign s_LOGISIM_BUS_78[18]               = s_LOGISIM_BUS_91[6];
   assign s_LOGISIM_BUS_91[7]                = s_LOGISIM_BUS_2[19];
   assign s_LOGISIM_BUS_78[19]               = s_LOGISIM_BUS_91[7];
   assign s_LOGISIM_BUS_91[8]                = s_LOGISIM_BUS_2[20];
   assign s_LOGISIM_BUS_78[20]               = s_LOGISIM_BUS_91[8];
   assign s_LOGISIM_BUS_91[9]                = s_LOGISIM_BUS_2[21];
   assign s_LOGISIM_BUS_78[21]               = s_LOGISIM_BUS_91[9];
   assign s_LOGISIM_BUS_91[10]               = s_LOGISIM_BUS_2[22];
   assign s_LOGISIM_BUS_78[22]               = s_LOGISIM_BUS_91[10];
   assign s_LOGISIM_BUS_91[11]               = s_LOGISIM_BUS_2[23];
   assign s_LOGISIM_BUS_78[23]               = s_LOGISIM_BUS_91[11];
   assign s_LOGISIM_BUS_91[12]               = s_LOGISIM_BUS_2[24];
   assign s_LOGISIM_BUS_78[24]               = s_LOGISIM_BUS_91[12];
   assign s_LOGISIM_BUS_91[13]               = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_78[25]               = s_LOGISIM_BUS_91[13];
   assign s_LOGISIM_BUS_91[14]               = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_78[26]               = s_LOGISIM_BUS_91[14];
   assign s_LOGISIM_BUS_91[15]               = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_78[27]               = s_LOGISIM_BUS_91[15];
   assign s_LOGISIM_BUS_91[16]               = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_78[28]               = s_LOGISIM_BUS_91[16];
   assign s_LOGISIM_BUS_91[17]               = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_78[29]               = s_LOGISIM_BUS_91[17];
   assign s_LOGISIM_BUS_91[18]               = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_78[30]               = s_LOGISIM_BUS_91[18];
   assign s_LOGISIM_BUS_91[19]               = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_78[31]               = s_LOGISIM_BUS_91[19];
   assign s_LOGISIM_NET_99                   = s_LOGISIM_BUS_2[7];
   assign s_LOGISIM_BUS_1[10]                = s_LOGISIM_NET_99;
   assign s_LOGISIM_BUS_118[0]               = s_LOGISIM_BUS_2[12];
   assign s_LOGISIM_BUS_38[0]                = s_LOGISIM_BUS_118[0];
   assign s_LOGISIM_BUS_118[1]               = s_LOGISIM_BUS_2[13];
   assign s_LOGISIM_BUS_38[1]                = s_LOGISIM_BUS_118[1];
   assign s_LOGISIM_BUS_118[2]               = s_LOGISIM_BUS_2[14];
   assign s_LOGISIM_BUS_38[2]                = s_LOGISIM_BUS_118[2];
   assign s_LOGISIM_NET_119                  = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_38[3]                = s_LOGISIM_NET_119;
   assign s_LOGISIM_NET_121                  = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_38[4]                = s_LOGISIM_NET_121;
   assign s_LOGISIM_BUS_122[0]               = s_LOGISIM_BUS_2[7];
   assign s_LOGISIM_BUS_71[0]                = s_LOGISIM_BUS_122[0];
   assign s_LOGISIM_BUS_122[1]               = s_LOGISIM_BUS_2[8];
   assign s_LOGISIM_BUS_71[1]                = s_LOGISIM_BUS_122[1];
   assign s_LOGISIM_BUS_122[2]               = s_LOGISIM_BUS_2[9];
   assign s_LOGISIM_BUS_71[2]                = s_LOGISIM_BUS_122[2];
   assign s_LOGISIM_BUS_122[3]               = s_LOGISIM_BUS_2[10];
   assign s_LOGISIM_BUS_71[3]                = s_LOGISIM_BUS_122[3];
   assign s_LOGISIM_BUS_122[4]               = s_LOGISIM_BUS_2[11];
   assign s_LOGISIM_BUS_71[4]                = s_LOGISIM_BUS_122[4];
   assign s_LOGISIM_BUS_123[0]               = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_71[5]                = s_LOGISIM_BUS_123[0];
   assign s_LOGISIM_BUS_123[1]               = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_71[6]                = s_LOGISIM_BUS_123[1];
   assign s_LOGISIM_BUS_123[2]               = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_71[7]                = s_LOGISIM_BUS_123[2];
   assign s_LOGISIM_BUS_123[3]               = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_71[8]                = s_LOGISIM_BUS_123[3];
   assign s_LOGISIM_BUS_123[4]               = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_71[9]                = s_LOGISIM_BUS_123[4];
   assign s_LOGISIM_BUS_123[5]               = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_71[10]               = s_LOGISIM_BUS_123[5];
   assign s_LOGISIM_BUS_123[6]               = s_LOGISIM_BUS_2[31];
   assign s_LOGISIM_BUS_71[11]               = s_LOGISIM_BUS_123[6];
   assign s_LOGISIM_BUS_124[0]               = s_LOGISIM_BUS_2[25];
   assign s_LOGISIM_BUS_1[4]                 = s_LOGISIM_BUS_124[0];
   assign s_LOGISIM_BUS_124[1]               = s_LOGISIM_BUS_2[26];
   assign s_LOGISIM_BUS_1[5]                 = s_LOGISIM_BUS_124[1];
   assign s_LOGISIM_BUS_124[2]               = s_LOGISIM_BUS_2[27];
   assign s_LOGISIM_BUS_1[6]                 = s_LOGISIM_BUS_124[2];
   assign s_LOGISIM_BUS_124[3]               = s_LOGISIM_BUS_2[28];
   assign s_LOGISIM_BUS_1[7]                 = s_LOGISIM_BUS_124[3];
   assign s_LOGISIM_BUS_124[4]               = s_LOGISIM_BUS_2[29];
   assign s_LOGISIM_BUS_1[8]                 = s_LOGISIM_BUS_124[4];
   assign s_LOGISIM_BUS_124[5]               = s_LOGISIM_BUS_2[30];
   assign s_LOGISIM_BUS_1[9]                 = s_LOGISIM_BUS_124[5];
   assign s_LOGISIM_BUS_125[0]               = s_LOGISIM_BUS_2[8];
   assign s_LOGISIM_BUS_1[0]                 = s_LOGISIM_BUS_125[0];
   assign s_LOGISIM_BUS_125[1]               = s_LOGISIM_BUS_2[9];
   assign s_LOGISIM_BUS_1[1]                 = s_LOGISIM_BUS_125[1];
   assign s_LOGISIM_BUS_125[2]               = s_LOGISIM_BUS_2[10];
   assign s_LOGISIM_BUS_1[2]                 = s_LOGISIM_BUS_125[2];
   assign s_LOGISIM_BUS_125[3]               = s_LOGISIM_BUS_2[11];
   assign s_LOGISIM_BUS_1[3]                 = s_LOGISIM_BUS_125[3];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_87                   = RST;
   assign s_LOGISIM_NET_105                  = GO;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign SEG                                = s_LOGISIM_BUS_74[7:0];
//   assign                                    = s_LOGISIM_BUS_81[31:0];
   assign NA                                 = s_LOGISIM_BUS_98[7:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_72 = 1'd0;

   assign s_LOGISIM_BUS_106[4:0] = 5'd10;

   assign s_LOGISIM_BUS_85[31:0] = 32'd34;

   assign s_LOGISIM_NET_44 = 1'd1;

   assign s_LOGISIM_BUS_115[4:0] = 5'd1;

   assign s_LOGISIM_NET_86 = 1'd1;

   assign s_LOGISIM_NET_84 = 1'd0;

   assign s_LOGISIM_NET_100 = 1'd0;

   assign s_LOGISIM_NET_109 = 1'd1;

   assign s_LOGISIM_BUS_78[11:0] = 12'd0;

   assign s_LOGISIM_NET_68 = 1'd0;

   assign s_LOGISIM_BUS_116[31:0] = 32'd4;

   assign s_LOGISIM_NET_73 = 1'd0;

   assign s_LOGISIM_BUS_82[31:0] = 32'h fffffffe;

   assign s_LOGISIM_NET_52 = 1'd0;

   assign s_LOGISIM_BUS_96[15:0] = 16'd0;

   assign s_LOGISIM_NET_37 = 1'd0;

   assign s_LOGISIM_NET_27 = 1'd0;

   assign s_LOGISIM_NET_28 = 1'd0;

   assign s_LOGISIM_BUS_89[4:0] = 5'd17;

   assign s_LOGISIM_BUS_114[4:0] = 5'd1;

   assign s_LOGISIM_NET_76 = 1'd0;

   assign s_LOGISIM_NET_56 = 1'd1;

   assign s_LOGISIM_NET_46 = 1'd0;

   assign s_LOGISIM_NET_45 = 1'd0;

   assign s_LOGISIM_NET_94 = 1'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_16),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_95[31:0]),
                    .DataB(s_LOGISIM_BUS_85[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_49[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_51[31:0]),
             .MuxOut(s_LOGISIM_BUS_63[31:0]),
             .Sel(s_LOGISIM_NET_19));

   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_11),
              .Input_2(s_LOGISIM_NET_19),
              .Result(s_LOGISIM_NET_50));

   Bit_Extender_8_32      BitExtender_1 (.imm_in(s_LOGISIM_BUS_8[7:0]),
                                         .imm_out(s_LOGISIM_BUS_70[31:0]));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(s_LOGISIM_NET_27),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_107[31:0]),
                 .DataB(s_LOGISIM_BUS_116[31:0]),
                 .Result(s_LOGISIM_BUS_66[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_66[31:0]),
             .MuxOut(s_LOGISIM_BUS_79[31:0]),
             .Sel(s_LOGISIM_NET_50));

   Multiplexer_bus_4 #(.NrOfBits(8))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_57[7:0]),
             .MuxIn_1(s_LOGISIM_BUS_57[15:8]),
             .MuxIn_2(s_LOGISIM_BUS_57[23:16]),
             .MuxIn_3(s_LOGISIM_BUS_57[31:24]),
             .MuxOut(s_LOGISIM_BUS_8[7:0]),
             .Sel(s_LOGISIM_BUS_61[1:0]));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_2 (.Input_1(s_LOGISIM_BUS_61[31:0]),
              .Input_2(s_LOGISIM_BUS_82[31:0]),
              .Result(s_LOGISIM_BUS_51[31:0]));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_67),
              .Input_2(s_LOGISIM_NET_7),
              .Input_3(s_LOGISIM_NET_25),
              .Result(s_LOGISIM_NET_104));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_66[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_40[31:0]),
             .MuxOut(s_LOGISIM_BUS_92[31:0]),
             .Sel(s_LOGISIM_NET_104));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_61[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_57[31:0]),
             .MuxOut(s_LOGISIM_BUS_4[31:0]),
             .Sel(s_LOGISIM_NET_21));

   AND_GATE #(.BubblesMask(1))
      GATE_4 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_7));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[24:20]),
             .MuxIn_1(s_LOGISIM_BUS_106[4:0]),
             .MuxOut(s_LOGISIM_BUS_60[4:0]),
             .Sel(s_LOGISIM_NET_29));

   NOT_GATE      GATE_5 (.Input_1(s_LOGISIM_NET_75),
                         .Result(s_LOGISIM_NET_30));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_79[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_70[31:0]),
             .MuxOut(s_LOGISIM_BUS_33[31:0]),
             .Sel(s_LOGISIM_NET_55));

   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_30),
                       .D(s_LOGISIM_BUS_63[31:0]),
                       .Q(s_LOGISIM_BUS_107[31:0]),
                       .Reset(s_LOGISIM_NET_87),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]),
                       .cs(s_LOGISIM_NET_94),
                       .pre(s_LOGISIM_NET_28));

   ROM_Order_ROM      ROM_1 (.Address(s_LOGISIM_BUS_107[21:2]),
                             .Data(s_LOGISIM_BUS_2[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_83),
              .Input_2(s_LOGISIM_NET_77),
              .Result(s_LOGISIM_NET_25));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_16),
              .Input_2(s_LOGISIM_NET_29),
              .Result(s_LOGISIM_NET_18));

   Bit_Extender_12_32_SIGN      BitExtender_2 (.imm_in(s_LOGISIM_BUS_36[11:0]),
                                               .imm_out(s_LOGISIM_BUS_54[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_101),
              .Result(s_LOGISIM_NET_67));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_33[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_65[31:0]),
             .MuxOut(s_LOGISIM_BUS_113[31:0]),
             .Sel(s_LOGISIM_NET_62));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_2[19:15]),
             .MuxIn_1(s_LOGISIM_BUS_89[4:0]),
             .MuxOut(s_LOGISIM_BUS_48[4:0]),
             .Sel(s_LOGISIM_NET_29));

   Bit_Extender_20_32_SIGN      BitExtender_3 (.imm_in(s_LOGISIM_BUS_108[19:0]),
                                               .imm_out(s_LOGISIM_BUS_102[31:0]));

   FPGADigit      FPGADigit_1 (.AN(s_LOGISIM_BUS_98[7:0]),
                               .SEG(s_LOGISIM_BUS_74[7:0]),
                               .clkx(LOGISIM_CLOCK_TREE_0[4]),
                               .dig(s_LOGISIM_BUS_81[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_18),
                       .D(s_LOGISIM_BUS_88[31:0]),
                       .Q(s_LOGISIM_BUS_81[31:0]),
                       .Reset(s_LOGISIM_NET_87),
                       .Tick(LOGISIM_CLOCK_TREE_0[2]),
                       .cs(s_LOGISIM_NET_68),
                       .pre(s_LOGISIM_NET_100));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_2 (.CarryIn(s_LOGISIM_NET_73),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_6[31:0]),
                 .DataB(s_LOGISIM_BUS_107[31:0]),
                 .Result(s_LOGISIM_BUS_40[31:0]));

   Bit_Extender_12_32_SIGN      BitExtender_4 (.imm_in(s_LOGISIM_BUS_1[11:0]),
                                               .imm_out(s_LOGISIM_BUS_103[31:0]));

   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(LOGISIM_CLOCK_TREE_0[4]),
                       .ClockEnable(s_LOGISIM_NET_20),
                       .D(s_LOGISIM_NET_109),
                       .Q(s_LOGISIM_NET_75),
                       .Reset(s_LOGISIM_NET_34),
                       .Tick(LOGISIM_CLOCK_TREE_0[3]),
                       .cs(s_LOGISIM_NET_46),
                       .pre(s_LOGISIM_NET_76));

   RAM_Data_RAM      RAM_1 (.addr(s_LOGISIM_BUS_61[13:2]),
                            .clk(LOGISIM_CLOCK_TREE_0[4]),
                            .tick(LOGISIM_CLOCK_TREE_0[2]),
                            .d(s_LOGISIM_BUS_88[31:0]),
                            .q(s_LOGISIM_BUS_57[31:0]),
                            .we(s_LOGISIM_NET_15),
                            .vgaaddr(vgaaddress[13:2]),
                            .vgavalue(vgavaluefromaddr));

   vga vgainstance(.i_clk(LOGISIM_CLOCK_TREE_0[4]),
                  .i_rst(RST),
                  .o_hs(VGA_HS_O),
                  .o_vs(VGA_VS_O),
                  .address(vgaaddress),
                  .o_active(active));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_3 (.CarryIn(s_LOGISIM_NET_84),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_78[31:0]),
                 .DataB(s_LOGISIM_BUS_107[31:0]),
                 .Result(s_LOGISIM_BUS_65[31:0]));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_4 (.CarryIn(s_LOGISIM_NET_72),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_5[31:0]),
                 .DataB(s_LOGISIM_BUS_107[31:0]),
                 .Result(s_LOGISIM_BUS_3[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_92[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_3[31:0]),
              .MuxOut(s_LOGISIM_BUS_49[31:0]),
              .Sel(s_LOGISIM_NET_11));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_102[31:0]),
                 .Result(s_LOGISIM_BUS_5[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_114[4:0]));

   Multiplexer_bus_2 #(.NrOfBits(12))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_2[31:20]),
              .MuxIn_1(s_LOGISIM_BUS_71[11:0]),
              .MuxOut(s_LOGISIM_BUS_36[11:0]),
              .Sel(s_LOGISIM_NET_12));

   OR_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_105),
              .Input_2(s_LOGISIM_NET_87),
              .Result(s_LOGISIM_NET_34));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_88[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_54[31:0]),
              .MuxOut(s_LOGISIM_BUS_39[31:0]),
              .Sel(s_LOGISIM_NET_24));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_NET_75),
                          .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_11 (.Input_1(s_LOGISIM_NET_16),
                          .Result(s_LOGISIM_NET_111));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(1),
                    .width(16))
      COUNTER_1 (.ClockEnable(LOGISIM_CLOCK_TREE_0[2]),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_64[15:0]),
                 .GlobalClock(LOGISIM_CLOCK_TREE_0[4]),
                 .LoadData(s_LOGISIM_BUS_96[15:0]),
                 .Up_n_Down(s_LOGISIM_NET_31),
                 .clear(s_LOGISIM_NET_52),
                 .load(s_LOGISIM_NET_37),
                 .pre(s_LOGISIM_NET_45));

   AND_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_29),
               .Input_2(s_LOGISIM_NET_111),
               .Result(s_LOGISIM_NET_20));

   Shifter_32_bit #(.ShifterMode(0))
      Shifter_2 (.DataA(s_LOGISIM_BUS_103[31:0]),
                 .Result(s_LOGISIM_BUS_6[31:0]),
                 .ShiftAmount(s_LOGISIM_BUS_115[4:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   ALU      ALU_1 (.AluOP(s_LOGISIM_BUS_0[3:0]),
                   .Equal(s_LOGISIM_NET_10),
                   .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                   .Result(s_LOGISIM_BUS_61[31:0]),
                   .Result_2(),
                   .X(s_LOGISIM_BUS_95[31:0]),
                   .Y(s_LOGISIM_BUS_39[31:0]),
                   .bigger_equal(),
                   .smaller(s_LOGISIM_NET_77));

   hardwired_controller      hardwired_controller_1 (.ALU_OP(s_LOGISIM_BUS_0[3:0]),
                                                     .ALU_SRC(s_LOGISIM_NET_24),
                                                     .AUIPC(s_LOGISIM_NET_62),
                                                     .BLT(s_LOGISIM_NET_83),
                                                     .Beq(s_LOGISIM_NET_101),
                                                     .Bne(s_LOGISIM_NET_17),
                                                     .CSRRCI(),
                                                     .CSRRSI(),
                                                     .Funct(s_LOGISIM_BUS_38[4:0]),
                                                     .IR21(s_LOGISIM_BUS_2[21]),
                                                     .JAL(s_LOGISIM_NET_11),
                                                     .Jalr(s_LOGISIM_NET_19),
                                                     .LBU(s_LOGISIM_NET_55),
                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                     .MemToReg(s_LOGISIM_NET_21),
                                                     .MemWrite(s_LOGISIM_NET_15),
                                                     .OP(s_LOGISIM_BUS_2[6:2]),
                                                     .RegWrite(s_LOGISIM_NET_23),
                                                     .SRA(s_LOGISIM_NET_97),
                                                     .S_type(s_LOGISIM_NET_12),
                                                     .ecall(s_LOGISIM_NET_29),
                                                     .rs1_used(),
                                                     .rs2_used(),
                                                     .uret(s_LOGISIM_NET_32));

//   RegFIle      RegFIle_1 (.Clk(s_LOGISIM_NET_110),
//                           .Din(s_LOGISIM_BUS_113[31:0]),
//                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
//                           .R1(s_LOGISIM_BUS_95[31:0]),
//                           .R1Adr(s_LOGISIM_BUS_48[4:0]),
//                           .R2(s_LOGISIM_BUS_88[31:0]),
//                           .R2Adr(s_LOGISIM_BUS_60[4:0]),
//                           .WAdr(s_LOGISIM_BUS_2[11:7]),
//                           .WE(s_LOGISIM_NET_23));

 regfile1      regfile0(.clk(LOGISIM_CLOCK_TREE_0[4]),
                           .wdata(s_LOGISIM_BUS_113[31:0]),
                           .wen(s_LOGISIM_NET_23),
                           .tick(LOGISIM_CLOCK_TREE_0[2]),
                           .rdata1(s_LOGISIM_BUS_95[31:0]),
                           .raddr1(s_LOGISIM_BUS_48[4:0]),
                           .rdata2(s_LOGISIM_BUS_88[31:0]),
                           .raddr2(s_LOGISIM_BUS_60[4:0]),
                           .waddr(s_LOGISIM_BUS_2[11:7]),
                           .butOn(buttonOn));

endmodule
