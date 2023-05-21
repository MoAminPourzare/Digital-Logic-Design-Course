/* Generated by Yosys 0.9 (git sha1 1979e0b1, i686-w64-mingw32.static-g++ 5.5.0 -Os) */

module Adder(A, B, ci, W, co);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  input [15:0] A;
  input [15:0] B;
  output [15:0] W;
  input ci;
  output co;
  assign _041_ = ~(B[1] ^ A[1]);
  assign _042_ = B[0] & A[0];
  assign _043_ = B[0] ^ A[0];
  assign _044_ = ~((_043_ & ci) | _042_);
  assign W[1] = _044_ ^ _041_;
  assign _045_ = ~(B[2] ^ A[2]);
  assign _046_ = ~(B[1] & A[1]);
  assign _047_ = ~((_044_ | _041_) & _046_);
  assign W[2] = ~(_047_ ^ _045_);
  assign _048_ = ~(B[3] ^ A[3]);
  assign _049_ = ~(B[2] & A[2]);
  assign _050_ = _047_ & ~(_045_);
  assign _051_ = _050_ | ~(_049_);
  assign W[3] = ~(_051_ ^ _048_);
  assign _052_ = B[4] ^ A[4];
  assign _053_ = ~(B[3] & A[3]);
  assign _054_ = ~((_049_ | _048_) & _053_);
  assign _055_ = ~(_048_ | _045_);
  assign _056_ = ~((_055_ & _047_) | _054_);
  assign W[4] = ~(_056_ ^ _052_);
  assign _057_ = ~(B[5] ^ A[5]);
  assign _058_ = ~_052_;
  assign _059_ = ~(B[4] & A[4]);
  assign _060_ = ~((_056_ | _058_) & _059_);
  assign W[5] = ~(_060_ ^ _057_);
  assign _061_ = ~(B[6] ^ A[6]);
  assign _062_ = B[5] & A[5];
  assign _063_ = ~(_059_ | _057_);
  assign _064_ = _063_ | _062_;
  assign _065_ = ~_064_;
  assign _066_ = _057_ | ~(_052_);
  assign _067_ = ~((_066_ | _056_) & _065_);
  assign W[6] = ~(_067_ ^ _061_);
  assign _068_ = ~(B[7] ^ A[7]);
  assign _069_ = B[6] ^ A[6];
  assign _070_ = ~(B[6] & A[6]);
  assign _071_ = ~_070_;
  assign _072_ = ~((_067_ & _069_) | _071_);
  assign W[7] = _072_ ^ _068_;
  assign _073_ = ~(B[8] ^ A[8]);
  assign _074_ = ~(B[7] & A[7]);
  assign _075_ = ~((_070_ | _068_) & _074_);
  assign _076_ = ~(_068_ | _061_);
  assign _077_ = ~((_076_ & _064_) | _075_);
  assign _078_ = _066_ | ~(_076_);
  assign _079_ = ~((_078_ | _056_) & _077_);
  assign W[8] = ~(_079_ ^ _073_);
  assign _080_ = ~(B[9] ^ A[9]);
  assign _081_ = ~(_078_ | _056_);
  assign _000_ = _077_ & ~(_081_);
  assign _001_ = ~(B[8] & A[8]);
  assign _002_ = ~((_000_ | _073_) & _001_);
  assign W[9] = ~(_002_ ^ _080_);
  assign _003_ = B[10] ^ A[10];
  assign _004_ = ~(_001_ | _080_);
  assign _005_ = ~((B[9] & A[9]) | _004_);
  assign _006_ = _080_ | _073_;
  assign _007_ = ~((_006_ | _000_) & _005_);
  assign W[10] = _007_ ^ _003_;
  assign _008_ = ~(B[11] ^ A[11]);
  assign _009_ = ~(B[10] & A[10]);
  assign _010_ = ~_009_;
  assign _011_ = ~((_007_ & _003_) | _010_);
  assign W[11] = _011_ ^ _008_;
  assign _012_ = ~(B[12] ^ A[12]);
  assign _013_ = ~_012_;
  assign _014_ = ~(B[11] & A[11]);
  assign _015_ = ~(_009_ | _008_);
  assign _016_ = _014_ & ~(_015_);
  assign _017_ = _008_ | ~(_003_);
  assign _018_ = ~((_017_ | _005_) & _016_);
  assign _019_ = ~(_017_ | _006_);
  assign _020_ = ~((_019_ & _079_) | _018_);
  assign W[12] = ~(_020_ ^ _013_);
  assign _021_ = ~(B[13] ^ A[13]);
  assign _022_ = B[12] & A[12];
  assign _023_ = ~_022_;
  assign _024_ = ~((_020_ | _012_) & _023_);
  assign W[13] = ~(_024_ ^ _021_);
  assign _025_ = B[14] ^ A[14];
  assign _026_ = _022_ & ~(_021_);
  assign _027_ = ~((B[13] & A[13]) | _026_);
  assign _028_ = _021_ | _012_;
  assign _029_ = ~((_028_ | _020_) & _027_);
  assign W[14] = _029_ ^ _025_;
  assign _030_ = B[15] ^ A[15];
  assign _031_ = B[14] & A[14];
  assign _032_ = ~((_029_ & _025_) | _031_);
  assign W[15] = ~(_032_ ^ _030_);
  assign _033_ = B[15] & A[15];
  assign _034_ = ~((_031_ & _030_) | _033_);
  assign _035_ = ~(_030_ & _025_);
  assign _036_ = ~((_035_ | _027_) & _034_);
  assign _037_ = _035_ | _028_;
  assign _038_ = _018_ & ~(_037_);
  assign _039_ = ~(_038_ | _036_);
  assign _040_ = _037_ | ~(_019_);
  assign co = ~((_040_ | _000_) & _039_);
  assign W[0] = _043_ ^ ci;
endmodule

module And16bit(A, B, W);
  input [15:0] A;
  input [15:0] B;
  output [15:0] W;
  assign W[0] = B[0] & A[0];
  assign W[1] = B[1] & A[1];
  assign W[2] = B[2] & A[2];
  assign W[3] = B[3] & A[3];
  assign W[4] = B[4] & A[4];
  assign W[5] = B[5] & A[5];
  assign W[6] = B[6] & A[6];
  assign W[7] = B[7] & A[7];
  assign W[8] = B[8] & A[8];
  assign W[9] = B[9] & A[9];
  assign W[10] = B[10] & A[10];
  assign W[11] = B[11] & A[11];
  assign W[12] = B[12] & A[12];
  assign W[13] = B[13] & A[13];
  assign W[14] = B[14] & A[14];
  assign W[15] = B[15] & A[15];
endmodule

module Inventer(A, W);
  input [15:0] A;
  output [15:0] W;
  assign W[0] = ~A[0];
  assign W[1] = ~A[1];
  assign W[2] = ~A[2];
  assign W[3] = ~A[3];
  assign W[4] = ~A[4];
  assign W[5] = ~A[5];
  assign W[6] = ~A[6];
  assign W[7] = ~A[7];
  assign W[8] = ~A[8];
  assign W[9] = ~A[9];
  assign W[10] = ~A[10];
  assign W[11] = ~A[11];
  assign W[12] = ~A[12];
  assign W[13] = ~A[13];
  assign W[14] = ~A[14];
  assign W[15] = ~A[15];
endmodule

module Mux4(A1, A2, A3, A4, select, W);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  input [15:0] A1;
  input [15:0] A2;
  input [15:0] A3;
  input [15:0] A4;
  output [15:0] W;
  input [1:0] select;
  assign _22_ = select[0] | select[1];
  assign _23_ = select[1] | ~(select[0]);
  assign _24_ = select[0] | ~(select[1]);
  assign _25_ = _24_ ? A4[0] : A3[0];
  assign _26_ = _23_ ? _25_ : A2[0];
  assign W[0] = _22_ ? _26_ : A1[0];
  assign _27_ = _24_ ? A4[1] : A3[1];
  assign _28_ = _23_ ? _27_ : A2[1];
  assign W[1] = _22_ ? _28_ : A1[1];
  assign _29_ = _24_ ? A4[2] : A3[2];
  assign _30_ = _23_ ? _29_ : A2[2];
  assign W[2] = _22_ ? _30_ : A1[2];
  assign _31_ = _24_ ? A4[3] : A3[3];
  assign _32_ = _23_ ? _31_ : A2[3];
  assign W[3] = _22_ ? _32_ : A1[3];
  assign _33_ = _24_ ? A4[4] : A3[4];
  assign _34_ = _23_ ? _33_ : A2[4];
  assign W[4] = _22_ ? _34_ : A1[4];
  assign _00_ = _24_ ? A4[5] : A3[5];
  assign _01_ = _23_ ? _00_ : A2[5];
  assign W[5] = _22_ ? _01_ : A1[5];
  assign _02_ = _24_ ? A4[6] : A3[6];
  assign _03_ = _23_ ? _02_ : A2[6];
  assign W[6] = _22_ ? _03_ : A1[6];
  assign _04_ = _24_ ? A4[7] : A3[7];
  assign _05_ = _23_ ? _04_ : A2[7];
  assign W[7] = _22_ ? _05_ : A1[7];
  assign _06_ = _24_ ? A4[8] : A3[8];
  assign _07_ = _23_ ? _06_ : A2[8];
  assign W[8] = _22_ ? _07_ : A1[8];
  assign _08_ = _24_ ? A4[9] : A3[9];
  assign _09_ = _23_ ? _08_ : A2[9];
  assign W[9] = _22_ ? _09_ : A1[9];
  assign _10_ = _24_ ? A4[10] : A3[10];
  assign _11_ = _23_ ? _10_ : A2[10];
  assign W[10] = _22_ ? _11_ : A1[10];
  assign _12_ = _24_ ? A4[11] : A3[11];
  assign _13_ = _23_ ? _12_ : A2[11];
  assign W[11] = _22_ ? _13_ : A1[11];
  assign _14_ = _24_ ? A4[12] : A3[12];
  assign _15_ = _23_ ? _14_ : A2[12];
  assign W[12] = _22_ ? _15_ : A1[12];
  assign _16_ = _24_ ? A4[13] : A3[13];
  assign _17_ = _23_ ? _16_ : A2[13];
  assign W[13] = _22_ ? _17_ : A1[13];
  assign _18_ = _24_ ? A4[14] : A3[14];
  assign _19_ = _23_ ? _18_ : A2[14];
  assign W[14] = _22_ ? _19_ : A1[14];
  assign _20_ = _24_ ? A4[15] : A3[15];
  assign _21_ = _23_ ? _20_ : A2[15];
  assign W[15] = _22_ ? _21_ : A1[15];
endmodule

module Or16bit(A, B, W);
  input [15:0] A;
  input [15:0] B;
  output [15:0] W;
  assign W[0] = B[0] | A[0];
  assign W[1] = B[1] | A[1];
  assign W[2] = B[2] | A[2];
  assign W[3] = B[3] | A[3];
  assign W[4] = B[4] | A[4];
  assign W[5] = B[5] | A[5];
  assign W[6] = B[6] | A[6];
  assign W[7] = B[7] | A[7];
  assign W[8] = B[8] | A[8];
  assign W[9] = B[9] | A[9];
  assign W[10] = B[10] | A[10];
  assign W[11] = B[11] | A[11];
  assign W[12] = B[12] | A[12];
  assign W[13] = B[13] | A[13];
  assign W[14] = B[14] | A[14];
  assign W[15] = B[15] | A[15];
endmodule

module Orbits(A, W);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  input [15:0] A;
  output W;
  assign _00_ = ~(A[14] | A[15]);
  assign _01_ = A[12] | A[13];
  assign _02_ = _01_ | ~(_00_);
  assign _03_ = ~(A[10] | A[11]);
  assign _04_ = A[8] | A[9];
  assign _05_ = _04_ | ~(_03_);
  assign _06_ = ~(_05_ | _02_);
  assign _07_ = A[6] | A[7];
  assign _08_ = A[4] | A[5];
  assign _09_ = ~(_08_ | _07_);
  assign _10_ = ~(A[2] | A[3]);
  assign _11_ = A[0] | A[1];
  assign _12_ = _11_ | ~(_10_);
  assign _13_ = _12_ | ~(_09_);
  assign W = _13_ | ~(_06_);
endmodule

module Q2(inM, inN, inC, opc, outF, zer, neg);
  wire _0_;
  wire [14:0] _1_;
  wire co;
  input inC;
  input [15:0] inM;
  input [15:0] inN;
  output neg;
  input [2:0] opc;
  output [15:0] outF;
  wire w3;
  wire w4;
  wire w5;
  wire w6;
  wire wAdd;
  wire [15:0] wAnd;
  wire [15:0] wInv;
  wire [15:0] wMux;
  wire [15:0] wOr;
  wire [15:0] wShif1;
  wire [15:0] wShif2;
  output zer;
  assign zer = ~w5;
  assign _0_ = ~(opc[0] | opc[1]);
  assign w6 = _0_ & ~(opc[2]);
  assign w3 = opc[2] & ~(_0_);
  assign w4 = opc[0] & ~(opc[2]);
  Adder A1 (
    .A(inM),
    .B(wMux),
    .W({ _1_, co }),
    .ci(w6),
    .co(wAdd)
  );
  Inventer G1 (
    .A(inM),
    .W(wInv)
  );
  Or16bit G2 (
    .A(inM),
    .B(inN),
    .W(wOr)
  );
  And16bit G3 (
    .A(inM),
    .B(inN),
    .W(wAnd)
  );
  Orbits G4 (
    .A(outF),
    .W(w5)
  );
  Mux4 M1 (
    .A1({ 15'h0000, wAdd }),
    .A2(wAnd),
    .A3(wOr),
    .A4(wInv),
    .W(outF),
    .select({ w3, w4 })
  );
  Mux4 M2 (
    .A1(inN),
    .A2(wShif1),
    .A3(16'h0001),
    .A4(wShif2),
    .W(wMux),
    .select(opc[1:0])
  );
  Shifter2bit1 S1 (
    .A(inN),
    .W(wShif1)
  );
  Shifter2bit1 S2 (
    .A(inM),
    .W(wShif2)
  );
  assign neg = outF[15];
endmodule

module Shifter2bit1(A, W);
  input [15:0] A;
  output [15:0] W;
  assign W = { A[15], A[15:1] };
endmodule
