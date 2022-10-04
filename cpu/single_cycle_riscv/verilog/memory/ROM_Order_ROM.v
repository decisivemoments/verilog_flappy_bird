/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ROM_Order_ROM                                                **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module ROM_Order_ROM( Address,
                      Data);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[9:0]  Address;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] Data;
   reg[31:0] Data;

   always @ (Address)
   begin
      case(Address)
//         0 : Data = 2097811;
//         1 : Data = 17826963;
//         2 : Data = 8688787;
//         3 : Data = 18121875;
//         4 : Data = 9438515;
//         5 : Data = 35653779;
//         6 : Data = 115;
//         7 : Data = 33558035;
//         8 : Data = 39093427;
//         9 : Data = 9438515;
//         10 : Data = 35653779;
//         11 : Data = 115;
//         12 : Data = -127469;
//         13 : Data = -32631069;
//         14 : Data = 10487955;
//         15 : Data = 115;
//         default : Data = 0;



         0 : Data = 1049747;
         1 : Data = 16777327;
         2 : Data = 1049747;
         3 : Data = 2099475;
         4 : Data = 3148179;
         5 : Data = 16777327;
         6 : Data = 1049747;
         7 : Data = 2099475;
         8 : Data = 3148179;
         9 : Data = 16777327;
         10 : Data = 1049747;
         11 : Data = 2099475;
         12 : Data = 3148179;
         13 : Data = 16777327;
         14 : Data = 1049747;
         15 : Data = 2099475;
         16 : Data = 3148179;
         17 : Data = 1103102191;
         18 : Data = 1049619;
         19 : Data = 1049747;
         20 : Data = 32806035;
         21 : Data = 9438515;
         22 : Data = 35653779;
         23 : Data = 115;
         24 : Data = 2413715;
         25 : Data = 296035;
         26 : Data = -18878353;
         27 : Data = 9438515;
         28 : Data = 35653779;
         29 : Data = 115;
         30 : Data = 1049747;
         31 : Data = 2397331;
         32 : Data = 9438515;
         33 : Data = 35653779;
         34 : Data = 115;
         35 : Data = 296035;
         36 : Data = -18878353;
         37 : Data = 1049747;
         38 : Data = 32806035;
         39 : Data = 9438515;
         40 : Data = 35653779;
         41 : Data = 115;
         42 : Data = 1077204115;
         43 : Data = 9438515;
         44 : Data = 35653779;
         45 : Data = 115;
         46 : Data = 1078252691;
         47 : Data = 9438515;
         48 : Data = 35653779;
         49 : Data = 115;
         50 : Data = 1078252691;
         51 : Data = 9438515;
         52 : Data = 35653779;
         53 : Data = 115;
         54 : Data = 1078252691;
         55 : Data = 9438515;
         56 : Data = 35653779;
         57 : Data = 115;
         58 : Data = 1078252691;
         59 : Data = 9438515;
         60 : Data = 35653779;
         61 : Data = 115;
         62 : Data = 1078252691;
         63 : Data = 9438515;
         64 : Data = 35653779;
         65 : Data = 115;
         66 : Data = 1078252691;
         67 : Data = 9438515;
         68 : Data = 35653779;
         69 : Data = 115;
         70 : Data = 1078252691;
         71 : Data = 9438515;
         72 : Data = 35653779;
         73 : Data = 115;
         74 : Data = 1049619;
         75 : Data = 32774547;
         76 : Data = 1106893203;
         77 : Data = 1075;
         78 : Data = 12585235;
         79 : Data = 3148563;
         80 : Data = 1311763;
         81 : Data = 16020499;
         82 : Data = 8389267;
         83 : Data = 1049363;
         84 : Data = 4823443;
         85 : Data = 9038259;
         86 : Data = 19924275;
         87 : Data = 35653779;
         88 : Data = 115;
         89 : Data = 1080197811;
         90 : Data = -33385245;
         91 : Data = 1311763;
         92 : Data = 15732627;
         93 : Data = 32797747;
         94 : Data = 29627411;
         95 : Data = 8389267;
         96 : Data = 1049363;
         97 : Data = 4839827;
         98 : Data = 9038259;
         99 : Data = 19924275;
         100 : Data = 35653779;
         101 : Data = 115;
         102 : Data = 1080197811;
         103 : Data = -33385245;
         104 : Data = 29643795;
         105 : Data = 1080757043;
         106 : Data = 722019;
         107 : Data = -111153041;
         108 : Data = 691;
         109 : Data = -867693;
         110 : Data = 8557203;
         111 : Data = 267575955;
         112 : Data = 5244211;
         113 : Data = 35653779;
         114 : Data = 115;
         115 : Data = -1047533;
         116 : Data = 1171;
         117 : Data = 8691747;
         118 : Data = 1311763;
         119 : Data = 4490387;
         120 : Data = 8691747;
         121 : Data = 1311763;
         122 : Data = 4490387;
         123 : Data = 8691747;
         124 : Data = 1311763;
         125 : Data = 4490387;
         126 : Data = 8691747;
         127 : Data = 1311763;
         128 : Data = 4490387;
         129 : Data = 8691747;
         130 : Data = 1311763;
         131 : Data = 4490387;
         132 : Data = 8691747;
         133 : Data = 1311763;
         134 : Data = 4490387;
         135 : Data = 8691747;
         136 : Data = 1311763;
         137 : Data = 4490387;
         138 : Data = 8691747;
         139 : Data = 1311763;
         140 : Data = 4490387;
         141 : Data = 8691747;
         142 : Data = 1311763;
         143 : Data = 4490387;
         144 : Data = 8691747;
         145 : Data = 1311763;
         146 : Data = 4490387;
         147 : Data = 8691747;
         148 : Data = 1311763;
         149 : Data = 4490387;
         150 : Data = 8691747;
         151 : Data = 1311763;
         152 : Data = 4490387;
         153 : Data = 8691747;
         154 : Data = 1311763;
         155 : Data = 4490387;
         156 : Data = 8691747;
         157 : Data = 1311763;
         158 : Data = 4490387;
         159 : Data = 8691747;
         160 : Data = 1311763;
         161 : Data = 4490387;
         162 : Data = 8691747;
         163 : Data = 1311763;
         164 : Data = 4490387;
         165 : Data = 1311763;
         166 : Data = 1075;
         167 : Data = 62915731;
         168 : Data = 272771;
         169 : Data = 305667;
         170 : Data = 21602995;
         171 : Data = 165475;
         172 : Data = 20226083;
         173 : Data = 21241891;
         174 : Data = -3898221;
         175 : Data = -23850269;
         176 : Data = 8389939;
         177 : Data = 35653779;
         178 : Data = 115;
         179 : Data = 4457491;
         180 : Data = 62915731;
         181 : Data = -57403677;
         182 : Data = 10487955;
         183 : Data = 115;
         184 : Data = 1049235;
         185 : Data = 3146515;
         186 : Data = 8389779;
         187 : Data = 8688787;
         188 : Data = 124028051;
         189 : Data = 21271699;
         190 : Data = 9438515;
         191 : Data = 35653779;
         192 : Data = 115;
         193 : Data = 8392211;
         194 : Data = 1079301299;
         195 : Data = 1080349875;
         196 : Data = 9438515;
         197 : Data = 35653779;
         198 : Data = 115;
         199 : Data = -127469;
         200 : Data = -32631581;
         201 : Data = 10487955;
         202 : Data = 115;
         203 : Data = 19;
         204 : Data = 4392087;
         205 : Data = 9438515;
         206 : Data = 35653779;
         207 : Data = 115;
         208 : Data = 4392087;
         209 : Data = 9438515;
         210 : Data = 35653779;
         211 : Data = 115;
         212 : Data = 4392087;
         213 : Data = 9438515;
         214 : Data = 35653779;
         215 : Data = 115;
         216 : Data = 4392087;
         217 : Data = 9438515;
         218 : Data = 35653779;
         219 : Data = 115;
         220 : Data = 4392087;
         221 : Data = 9438515;
         222 : Data = 35653779;
         223 : Data = 115;
         224 : Data = 4392087;
         225 : Data = 9438515;
         226 : Data = 35653779;
         227 : Data = 115;
         228 : Data = 4392087;
         229 : Data = 9438515;
         230 : Data = 35653779;
         231 : Data = 115;
         232 : Data = 4392087;
         233 : Data = 9438515;
         234 : Data = 35653779;
         235 : Data = 115;
         236 : Data = 10487955;
         237 : Data = 115;

         238 : Data = 787;
         239 : Data = 16780819;
         240 : Data = 138413203;
         241 : Data = 8688787;
         242 : Data = 137659539;
         243 : Data = 4196627;
         244 : Data = 8984851;
         245 : Data = 4786451;
         246 : Data = 8688787;
         247 : Data = 136610963;
         248 : Data = 8688787;
         249 : Data = 135562387;
         250 : Data = 8984851;
         251 : Data = 4786451;
         252 : Data = 8984851;
         253 : Data = 4786451;
         254 : Data = 9642019;
         255 : Data = 19170483;
         256 : Data = 4391699;
         257 : Data = -127469;
         258 : Data = -32630557;
         259 : Data = 33558035;
         260 : Data = 787;
         261 : Data = 214147;
         262 : Data = 9438515;
         263 : Data = 35653779;
         264 : Data = 115;
         265 : Data = 1245971;
         266 : Data = -127469;
         267 : Data = -32631581;
         268 : Data = 10487955;
         269 : Data = 115;
         270 : Data = -15727469;
         271 : Data = 9438515;
         272 : Data = 35653779;
         273 : Data = 115;
         274 : Data = 1344659;
         275 : Data = -33240861;
         276 : Data = 10487955;
         277 : Data = 115;
         278 : Data = 10487955;
         279 : Data = 115;
         280 : Data = 1043;
         281 : Data = 1311763;
         282 : Data = 8389939;
         283 : Data = 35653779;
         284 : Data = 115;
         285 : Data = 2360339;
         286 : Data = 8389939;
         287 : Data = 35653779;
         288 : Data = 115;
         289 : Data = 3408915;
         290 : Data = 8389939;
         291 : Data = 35653779;
         292 : Data = 115;
         293 : Data = 4457491;
         294 : Data = 8389939;
         295 : Data = 35653779;
         296 : Data = 115;
         297 : Data = 5506067;
         298 : Data = 8389939;
         299 : Data = 35653779;
         300 : Data = 115;
         301 : Data = 6554643;
         302 : Data = 8389939;
         303 : Data = 35653779;
         304 : Data = 115;
         305 : Data = 7603219;
         306 : Data = 8389939;
         307 : Data = 35653779;
         308 : Data = 115;
         309 : Data = 8651795;
         310 : Data = 8389939;
         311 : Data = 35653779;
         312 : Data = 35653779;
         313 : Data = 115;
         314 : Data = 32871;
         default : Data = 0;
      endcase
   end

endmodule
