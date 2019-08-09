// Verilog netlist produced by program LSE :  version Radiant (64-bit) 1.0.0.350.6
// Netlist written on Sat Apr 27 16:45:13 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "c:/users/ellesh01/desktop/midi_final_proj_2/midi_interpreter.vhd"
// file 1 "c:/users/ellesh01/desktop/midi_final_proj_2/midi_reciever.vhd"
// file 2 "c:/users/ellesh01/desktop/midi_final_proj_2/play_note.vhd"
// file 3 "c:/users/ellesh01/desktop/midi_final_proj_2/pll/rtl/pll.v"
// file 4 "c:/users/ellesh01/desktop/midi_final_proj_2/rom_lut.vhd"
// file 5 "c:/users/ellesh01/desktop/midi_final_proj_2/top.vhd"
// file 6 "c:/lscc/radiant/1.0/ip/pmi/pmi.v"
// file 7 "c:/lscc/radiant/1.0/ip/pmi/pmi.vhd"
// file 8 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ccu2_b.v"
// file 9 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3bz.v"
// file 10 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3dz.v"
// file 11 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3iz.v"
// file 12 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3jz.v"
// file 13 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc.v"
// file 14 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc1p8v.v"
// file 15 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ib.v"
// file 16 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ifd1p3az.v"
// file 17 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc.v"
// file 18 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc1p8v.v"
// file 19 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ob.v"
// file 20 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/obz_b.v"
// file 21 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ofd1p3az.v"
// file 22 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/pdp4k.v"
// file 23 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb.v"
// file 24 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb1p8v.v"
// file 25 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/sp256k.v"
// file 26 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/legacy.v"
// file 27 "c:/lscc/radiant/1.0/ip/common/adder/rtl/lscc_adder.v"
// file 28 "c:/lscc/radiant/1.0/ip/common/complex_mult/rtl/lscc_complex_mult.v"
// file 29 "c:/lscc/radiant/1.0/ip/common/mult_accumulate/rtl/lscc_mult_accumulate.v"
// file 30 "c:/lscc/radiant/1.0/ip/common/mult_add_sub/rtl/lscc_mult_add_sub.v"
// file 31 "c:/lscc/radiant/1.0/ip/common/multiplier/rtl/lscc_multiplier.v"
// file 32 "c:/lscc/radiant/1.0/ip/common/ram_dp/rtl/lscc_ram_dp.v"
// file 33 "c:/lscc/radiant/1.0/ip/common/ram_dq/rtl/lscc_ram_dq.v"
// file 34 "c:/lscc/radiant/1.0/ip/common/subtractor/rtl/lscc_subtractor.v"
// file 35 "c:/lscc/radiant/1.0/ip/pmi/pmi_add.v"
// file 36 "c:/lscc/radiant/1.0/ip/pmi/pmi_complex_mult.v"
// file 37 "c:/lscc/radiant/1.0/ip/pmi/pmi_dsp.v"
// file 38 "c:/lscc/radiant/1.0/ip/pmi/pmi_mac.v"
// file 39 "c:/lscc/radiant/1.0/ip/pmi/pmi_mult.v"
// file 40 "c:/lscc/radiant/1.0/ip/pmi/pmi_multaddsub.v"
// file 41 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dp.v"
// file 42 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dq.v"
// file 43 "c:/lscc/radiant/1.0/ip/pmi/pmi_sub.v"
// file 44 "c:/users/ellesh01/desktop/midi_final_proj_2/pll/rtl/core/lscc_pll.v"

//
// Verilog Description of module top
//

module top (serial, sample);   /* synthesis lineinfo="@5(5[8],5[11])"*/
    input serial;   /* synthesis lineinfo="@5(7[3],7[9])"*/
    output sample;   /* synthesis lineinfo="@5(8[3],8[9])"*/
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    wire serial_c, sample_c;
    wire [7:0]byte_sig;   /* synthesis lineinfo="@5(73[10],73[18])"*/
    wire [7:0]note_sig;   /* synthesis lineinfo="@5(74[10],74[18])"*/
    
    wire valid_sig, on_off_sig, GND_net, VCC_net;
    wire [1:0]tracker;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    
    wire data;
    wire [9:0]clock_counter;   /* synthesis lineinfo="@1(26[10],26[23])"*/
    wire [2:0]bit_index;   /* synthesis lineinfo="@1(27[10],27[19])"*/
    
    wire n2036, n639, n2043, n1180;
    wire [1:0]tracker_adj_187;   /* synthesis lineinfo="@0(24[10],24[17])"*/
    wire [7:0]status_byte;   /* synthesis lineinfo="@0(26[10],26[21])"*/
    
    wire n226, n306;
    wire [7:0]note_7__N_94;
    
    wire n4, n4_adj_183, n659, n4_adj_184, n627, n1, n705, n807, 
        n806, n805, n804, n803, n802, n801, n800, n799, n798, 
        n797, n796, n795, n794, n793, n787, n783, n632, n2028, 
        n2035, n958, n2216, n2207, n2038, n2119, n2008, n2014, 
        n2205, n10;
    
    VLO i1 (.Z(GND_net));
    LUT4 i630_4_lut (.A(data), .B(byte_sig[7]), .C(n1180), .D(n627), 
         .Z(n807)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i630_4_lut.INIT = "0xccac";
    play_note sound_out (.on_off_sig(on_off_sig), .inputclk(inputclk), .sample_c(sample_c), 
            .GND_net(GND_net), .note_7__N_94({note_7__N_94}), .outclk(outclk), 
            .valid_sig(valid_sig));   /* synthesis lineinfo="@5(112[14],112[23])"*/
    HSOSC_CORE CLKSIG (.CLKHFPU(VCC_net), .CLKHFEN(VCC_net), .TRIM9(GND_net), 
            .TRIM8(GND_net), .TRIM7(GND_net), .TRIM6(GND_net), .TRIM5(GND_net), 
            .TRIM4(GND_net), .TRIM3(GND_net), .TRIM2(GND_net), .TRIM1(GND_net), 
            .TRIM0(GND_net), .CLKHF(inputclk)) /* synthesis syn_instantiated=1 */ ;
    defparam CLKSIG.CLKHF_DIV = "0b00";
    defparam CLKSIG.FABRIC_TRIME = "DISABLE";
    LUT4 i1827_4_lut_4_lut (.A(clock_counter[1]), .B(clock_counter[4]), 
         .C(clock_counter[0]), .D(clock_counter[9]), .Z(n2119)) /* synthesis lut_function=((B (C+(D))+!B !(C (D)))+!A) */ ;   /* synthesis lineinfo="@1(26[10],26[23])"*/
    defparam i1827_4_lut_4_lut.INIT = "0xdff7";
    IB serial_pad (.I(serial), .O(serial_c));   /* synthesis lineinfo="@5(7[3],7[9])"*/
    LUT4 i12_4_lut (.A(status_byte[4]), .B(n2216), .C(n2035), .D(byte_sig[4]), 
         .Z(n2008)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i12_4_lut.INIT = "0xca0a";
    OB sample_pad (.I(sample_c), .O(sample));   /* synthesis lineinfo="@5(8[3],8[9])"*/
    LUT4 i1913_2_lut (.A(tracker_adj_187[1]), .B(byte_sig[7]), .Z(n2216)) /* synthesis lut_function=(!(A+!(B))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i1913_2_lut.INIT = "0x4444";
    midi_interpreter midi_parse (.tracker({tracker_adj_187}), .valid_sig(valid_sig), 
            .\byte_sig[7] (byte_sig[7]), .n2035(n2035), .n1(n1), .outclk(outclk), 
            .note_sig({note_sig}), .\byte_sig[2] (byte_sig[2]), .n306(n306), 
            .n958(n958), .\note_7__N_94[2] (note_7__N_94[2]), .\byte_sig[3] (byte_sig[3]), 
            .\note_7__N_94[3] (note_7__N_94[3]), .\byte_sig[4] (byte_sig[4]), 
            .\note_7__N_94[4] (note_7__N_94[4]), .n2014(n2014), .on_off_sig(on_off_sig), 
            .\byte_sig[6] (byte_sig[6]), .\note_7__N_94[6] (note_7__N_94[6]), 
            .n2008(n2008), .\status_byte[4] (status_byte[4]), .n10(n10), 
            .n802(n802), .n801(n801), .n800(n800), .n799(n799), .n798(n798), 
            .n797(n797), .n796(n796), .n783(n783), .n705(n705), .n2036(n2036));   /* synthesis lineinfo="@5(97[15],97[31])"*/
    LUT4 i629_4_lut (.A(data), .B(byte_sig[6]), .C(n1180), .D(n639), 
         .Z(n806)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i629_4_lut.INIT = "0xccac";
    \midi_reciever(996)  midi_in (.\clock_counter[4] (clock_counter[4]), .outclk(outclk), 
            .tracker({tracker}), .n226(n226), .data(data), .GND_net(GND_net), 
            .\clock_counter[0] (clock_counter[0]), .n1180(n1180), .n659(n659), 
            .n2028(n2028), .\bit_index[0] (bit_index[0]), .n627(n627), 
            .n639(n639), .n632(n632), .\clock_counter[9] (clock_counter[9]), 
            .valid_sig(valid_sig), .byte_sig({byte_sig}), .tracker_adj_5({tracker_adj_187}), 
            .\note_sig[0] (note_sig[0]), .n958(n958), .\note_7__N_94[0] (note_7__N_94[0]), 
            .\note_sig[5] (note_sig[5]), .n306(n306), .\note_7__N_94[5] (note_7__N_94[5]), 
            .\note_sig[1] (note_sig[1]), .\note_7__N_94[1] (note_7__N_94[1]), 
            .n793(n793), .n807(n807), .n806(n806), .n805(n805), .n804(n804), 
            .n803(n803), .n795(n795), .n794(n794), .n787(n787), .\note_sig[7] (note_sig[7]), 
            .\note_7__N_94[7] (note_7__N_94[7]), .\clock_counter[1] (clock_counter[1]), 
            .n783(n783), .serial_c(serial_c), .n802(n802), .n1(n1), 
            .n2043(n2043), .n2038(n2038), .n10(n10), .n798(n798), .n4(n4_adj_184), 
            .n4_adj_3(n4), .n796(n796), .n4_adj_4(n4_adj_183));   /* synthesis lineinfo="@5(87[12],87[25])"*/
    LUT4 i11_4_lut (.A(on_off_sig), .B(status_byte[4]), .C(n2036), .D(n705), 
         .Z(n2014)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i11_4_lut.INIT = "0xca0a";
    LUT4 i628_4_lut (.A(data), .B(byte_sig[5]), .C(n4_adj_184), .D(n627), 
         .Z(n805)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i628_4_lut.INIT = "0xccca";
    LUT4 i616_4_lut (.A(n659), .B(bit_index[0]), .C(n2028), .D(tracker[1]), 
         .Z(n793)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i616_4_lut.INIT = "0x4644";
    LUT4 i627_4_lut (.A(data), .B(byte_sig[4]), .C(n4_adj_184), .D(n639), 
         .Z(n804)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i627_4_lut.INIT = "0xccca";
    LUT4 i626_4_lut (.A(data), .B(byte_sig[3]), .C(n4), .D(n627), .Z(n803)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i626_4_lut.INIT = "0xccca";
    LUT4 i624_3_lut (.A(note_sig[2]), .B(note_7__N_94[2]), .C(valid_sig), 
         .Z(n801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i624_3_lut.INIT = "0xcaca";
    LUT4 i623_3_lut (.A(note_sig[3]), .B(note_7__N_94[3]), .C(valid_sig), 
         .Z(n800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i623_3_lut.INIT = "0xcaca";
    LUT4 i622_3_lut (.A(note_sig[4]), .B(note_7__N_94[4]), .C(valid_sig), 
         .Z(n799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i622_3_lut.INIT = "0xcaca";
    LUT4 i620_3_lut (.A(note_sig[6]), .B(note_7__N_94[6]), .C(valid_sig), 
         .Z(n797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i620_3_lut.INIT = "0xcaca";
    LUT4 i618_4_lut (.A(data), .B(byte_sig[2]), .C(n4), .D(n639), .Z(n795)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i618_4_lut.INIT = "0xccca";
    LUT4 i617_4_lut (.A(data), .B(byte_sig[1]), .C(n4_adj_183), .D(n627), 
         .Z(n794)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i617_4_lut.INIT = "0xccca";
    LUT4 i152_4_lut (.A(n2205), .B(n2207), .C(tracker[1]), .D(n2038), 
         .Z(n226)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    defparam i152_4_lut.INIT = "0xcafa";
    LUT4 i1908_4_lut (.A(n2119), .B(tracker[0]), .C(n2038), .D(n632), 
         .Z(n2205)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    defparam i1908_4_lut.INIT = "0xcc8c";
    LUT4 i610_4_lut (.A(data), .B(byte_sig[0]), .C(n4_adj_183), .D(n639), 
         .Z(n787)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i610_4_lut.INIT = "0xccca";
    LUT4 i1902_4_lut (.A(n2119), .B(n632), .C(n2043), .D(tracker[0]), 
         .Z(n2207)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    defparam i1902_4_lut.INIT = "0xfcee";
    pll baud_sync (.GND_net(GND_net), .inputclk(inputclk), .outclk(outclk));   /* synthesis lineinfo="@5(85[16],85[19])"*/
    VHI i2115 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module play_note
//

module play_note (on_off_sig, inputclk, sample_c, GND_net, note_7__N_94, 
            outclk, valid_sig);
    input on_off_sig;
    input inputclk;
    output sample_c;
    input GND_net;
    input [7:0]note_7__N_94;
    input outclk;
    input valid_sig;
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    wire [31:0]n133;
    wire [31:0]counter;   /* synthesis lineinfo="@2(18[8],18[15])"*/
    
    wire n724, n19, n40, n20, sample_N_171, n36;
    wire [31:0]frequency;   /* synthesis lineinfo="@2(19[8],19[17])"*/
    
    wire n38, sample_N_170, n18, n20_adj_179, n18_adj_180, n30, 
        n32, n2486, VCC_net, n1597, n1619, n2531, n1621, n1611, 
        n2513, n1613, n1603, n2498, n1605, n34, n1601, n2495, 
        n1609, n2510, n1617, n2528, n1607, n2507, n1599, n2492, 
        n1627, n2543, n1615, n2519, n1625, n2540, n2489, n28, 
        n16, n1623, n2537, n2516, n2501, n2534, n14, n12, n10, 
        n8, n26, n6, n4, n24, n22, GND_net_c;
    
    FD1P3XZ counter_196__i20 (.D(n133[20]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[20]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i20.REGSET = "RESET";
    defparam counter_196__i20.SRMODE = "CE_OVER_LSR";
    LUT4 i1010_4_lut (.A(n19), .B(counter[31]), .C(n40), .D(n20), .Z(sample_N_171)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam i1010_4_lut.INIT = "0x3332";
    FD1P3XZ counter_196__i19 (.D(n133[19]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[19]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i19.REGSET = "RESET";
    defparam counter_196__i19.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i6 (.D(n133[6]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[6]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i6.REGSET = "RESET";
    defparam counter_196__i6.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i18 (.D(n133[18]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[18]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i18.REGSET = "RESET";
    defparam counter_196__i18.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i17 (.D(n133[17]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[17]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i17.REGSET = "RESET";
    defparam counter_196__i17.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i38_3_lut (.A(n36), .B(counter[18]), .C(frequency[18]), 
         .Z(n38)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i38_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_196__i5 (.D(n133[5]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[5]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i5.REGSET = "RESET";
    defparam counter_196__i5.SRMODE = "CE_OVER_LSR";
    LUT4 i8_4_lut (.A(counter[20]), .B(counter[26]), .C(counter[25]), 
         .D(counter[28]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.INIT = "0xfffe";
    FD1P3XZ counter_196__i3 (.D(n133[3]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[3]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i3.REGSET = "RESET";
    defparam counter_196__i3.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i2 (.D(n133[2]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[2]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i2.REGSET = "RESET";
    defparam counter_196__i2.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i1 (.D(n133[1]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[1]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i1.REGSET = "RESET";
    defparam counter_196__i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ sample_sig_17 (.D(sample_N_170), .SP(on_off_sig), .CK(inputclk), 
            .SR(GND_net_c), .Q(sample_c));   /* synthesis lineinfo="@2(38[2],47[10])"*/
    defparam sample_sig_17.REGSET = "RESET";
    defparam sample_sig_17.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i9 (.D(n133[9]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[9]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i9.REGSET = "RESET";
    defparam counter_196__i9.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i40_3_lut (.A(n38), .B(counter[19]), .C(frequency[19]), 
         .Z(n40)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i40_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_196__i16 (.D(n133[16]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[16]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i16.REGSET = "RESET";
    defparam counter_196__i16.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i8 (.D(n133[8]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[8]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i8.REGSET = "RESET";
    defparam counter_196__i8.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i20_3_lut (.A(n18), .B(counter[9]), .C(frequency[9]), 
         .Z(n20_adj_179)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i20_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_196__i7 (.D(n133[7]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[7]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i7.REGSET = "RESET";
    defparam counter_196__i7.SRMODE = "CE_OVER_LSR";
    LUT4 i9_4_lut (.A(counter[24]), .B(n18_adj_180), .C(counter[23]), 
         .D(counter[21]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.INIT = "0xfffe";
    LUT4 counter_31__I_0_i32_3_lut (.A(n30), .B(counter[15]), .C(frequency[15]), 
         .Z(n32)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i32_3_lut.INIT = "0x8e8e";
    FA2 counter_196_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
        .A1(GND_net), .B1(VCC_net), .C1(counter[0]), .D1(n2486), .CI1(n2486), 
        .CO0(n2486), .CO1(n1597), .S1(n133[0]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_1.INIT0 = "0xc33c";
    defparam counter_196_add_4_1.INIT1 = "0xc33c";
    FA2 counter_196_add_4_25 (.A0(GND_net), .B0(GND_net), .C0(counter[23]), 
        .D0(n1619), .CI0(n1619), .A1(GND_net), .B1(GND_net), .C1(counter[24]), 
        .D1(n2531), .CI1(n2531), .CO0(n2531), .CO1(n1621), .S0(n133[23]), 
        .S1(n133[24]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_25.INIT0 = "0xc33c";
    defparam counter_196_add_4_25.INIT1 = "0xc33c";
    FD1P3XZ counter_196__i4 (.D(n133[4]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[4]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i4.REGSET = "RESET";
    defparam counter_196__i4.SRMODE = "CE_OVER_LSR";
    FA2 counter_196_add_4_17 (.A0(GND_net), .B0(GND_net), .C0(counter[15]), 
        .D0(n1611), .CI0(n1611), .A1(GND_net), .B1(GND_net), .C1(counter[16]), 
        .D1(n2513), .CI1(n2513), .CO0(n2513), .CO1(n1613), .S0(n133[15]), 
        .S1(n133[16]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_17.INIT0 = "0xc33c";
    defparam counter_196_add_4_17.INIT1 = "0xc33c";
    FD1P3XZ counter_196__i0 (.D(n133[0]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[0]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i0.REGSET = "RESET";
    defparam counter_196__i0.SRMODE = "CE_OVER_LSR";
    FA2 counter_196_add_4_9 (.A0(GND_net), .B0(GND_net), .C0(counter[7]), 
        .D0(n1603), .CI0(n1603), .A1(GND_net), .B1(GND_net), .C1(counter[8]), 
        .D1(n2498), .CI1(n2498), .CO0(n2498), .CO1(n1605), .S0(n133[7]), 
        .S1(n133[8]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_9.INIT0 = "0xc33c";
    defparam counter_196_add_4_9.INIT1 = "0xc33c";
    LUT4 counter_31__I_0_i36_3_lut (.A(n34), .B(counter[17]), .C(frequency[17]), 
         .Z(n36)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i36_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_196__i31 (.D(n133[31]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[31]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i31.REGSET = "RESET";
    defparam counter_196__i31.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i30 (.D(n133[30]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[30]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i30.REGSET = "RESET";
    defparam counter_196__i30.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i15 (.D(n133[15]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[15]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i15.REGSET = "RESET";
    defparam counter_196__i15.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i29 (.D(n133[29]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[29]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i29.REGSET = "RESET";
    defparam counter_196__i29.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i14 (.D(n133[14]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[14]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i14.REGSET = "RESET";
    defparam counter_196__i14.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i28 (.D(n133[28]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[28]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i28.REGSET = "RESET";
    defparam counter_196__i28.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i13 (.D(n133[13]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[13]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i13.REGSET = "RESET";
    defparam counter_196__i13.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i27 (.D(n133[27]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[27]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i27.REGSET = "RESET";
    defparam counter_196__i27.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i26 (.D(n133[26]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[26]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i26.REGSET = "RESET";
    defparam counter_196__i26.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i25 (.D(n133[25]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[25]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i25.REGSET = "RESET";
    defparam counter_196__i25.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i24 (.D(n133[24]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[24]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i24.REGSET = "RESET";
    defparam counter_196__i24.SRMODE = "CE_OVER_LSR";
    LUT4 sample_I_0_2_lut (.A(sample_c), .B(sample_N_171), .Z(sample_N_170)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@2(40[4],45[11])"*/
    defparam sample_I_0_2_lut.INIT = "0x6666";
    FD1P3XZ counter_196__i12 (.D(n133[12]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[12]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i12.REGSET = "RESET";
    defparam counter_196__i12.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i23 (.D(n133[23]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[23]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i23.REGSET = "RESET";
    defparam counter_196__i23.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i11 (.D(n133[11]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[11]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i11.REGSET = "RESET";
    defparam counter_196__i11.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i22 (.D(n133[22]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[22]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i22.REGSET = "RESET";
    defparam counter_196__i22.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_196__i21 (.D(n133[21]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[21]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i21.REGSET = "RESET";
    defparam counter_196__i21.SRMODE = "CE_OVER_LSR";
    FA2 counter_196_add_4_7 (.A0(GND_net), .B0(GND_net), .C0(counter[5]), 
        .D0(n1601), .CI0(n1601), .A1(GND_net), .B1(GND_net), .C1(counter[6]), 
        .D1(n2495), .CI1(n2495), .CO0(n2495), .CO1(n1603), .S0(n133[5]), 
        .S1(n133[6]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_7.INIT0 = "0xc33c";
    defparam counter_196_add_4_7.INIT1 = "0xc33c";
    FA2 counter_196_add_4_15 (.A0(GND_net), .B0(GND_net), .C0(counter[13]), 
        .D0(n1609), .CI0(n1609), .A1(GND_net), .B1(GND_net), .C1(counter[14]), 
        .D1(n2510), .CI1(n2510), .CO0(n2510), .CO1(n1611), .S0(n133[13]), 
        .S1(n133[14]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_15.INIT0 = "0xc33c";
    defparam counter_196_add_4_15.INIT1 = "0xc33c";
    FA2 counter_196_add_4_23 (.A0(GND_net), .B0(GND_net), .C0(counter[21]), 
        .D0(n1617), .CI0(n1617), .A1(GND_net), .B1(GND_net), .C1(counter[22]), 
        .D1(n2528), .CI1(n2528), .CO0(n2528), .CO1(n1619), .S0(n133[21]), 
        .S1(n133[22]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_23.INIT0 = "0xc33c";
    defparam counter_196_add_4_23.INIT1 = "0xc33c";
    FA2 counter_196_add_4_13 (.A0(GND_net), .B0(GND_net), .C0(counter[11]), 
        .D0(n1607), .CI0(n1607), .A1(GND_net), .B1(GND_net), .C1(counter[12]), 
        .D1(n2507), .CI1(n2507), .CO0(n2507), .CO1(n1609), .S0(n133[11]), 
        .S1(n133[12]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_13.INIT0 = "0xc33c";
    defparam counter_196_add_4_13.INIT1 = "0xc33c";
    FA2 counter_196_add_4_5 (.A0(GND_net), .B0(GND_net), .C0(counter[3]), 
        .D0(n1599), .CI0(n1599), .A1(GND_net), .B1(GND_net), .C1(counter[4]), 
        .D1(n2492), .CI1(n2492), .CO0(n2492), .CO1(n1601), .S0(n133[3]), 
        .S1(n133[4]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_5.INIT0 = "0xc33c";
    defparam counter_196_add_4_5.INIT1 = "0xc33c";
    FA2 counter_196_add_4_33 (.A0(GND_net), .B0(GND_net), .C0(counter[31]), 
        .D0(n1627), .CI0(n1627), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n2543), .CI1(n2543), .CO0(n2543), .S0(n133[31]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_33.INIT0 = "0xc33c";
    defparam counter_196_add_4_33.INIT1 = "0xc33c";
    FA2 counter_196_add_4_21 (.A0(GND_net), .B0(GND_net), .C0(counter[19]), 
        .D0(n1615), .CI0(n1615), .A1(GND_net), .B1(GND_net), .C1(counter[20]), 
        .D1(n2519), .CI1(n2519), .CO0(n2519), .CO1(n1617), .S0(n133[19]), 
        .S1(n133[20]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_21.INIT0 = "0xc33c";
    defparam counter_196_add_4_21.INIT1 = "0xc33c";
    FA2 counter_196_add_4_31 (.A0(GND_net), .B0(GND_net), .C0(counter[29]), 
        .D0(n1625), .CI0(n1625), .A1(GND_net), .B1(GND_net), .C1(counter[30]), 
        .D1(n2540), .CI1(n2540), .CO0(n2540), .CO1(n1627), .S0(n133[29]), 
        .S1(n133[30]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_31.INIT0 = "0xc33c";
    defparam counter_196_add_4_31.INIT1 = "0xc33c";
    FA2 counter_196_add_4_3 (.A0(GND_net), .B0(GND_net), .C0(counter[1]), 
        .D0(n1597), .CI0(n1597), .A1(GND_net), .B1(GND_net), .C1(counter[2]), 
        .D1(n2489), .CI1(n2489), .CO0(n2489), .CO1(n1599), .S0(n133[1]), 
        .S1(n133[2]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_3.INIT0 = "0xc33c";
    defparam counter_196_add_4_3.INIT1 = "0xc33c";
    LUT4 counter_31__I_0_i30_3_lut (.A(n28), .B(counter[14]), .C(frequency[14]), 
         .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i30_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i18_3_lut (.A(n16), .B(counter[8]), .C(frequency[8]), 
         .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i18_3_lut.INIT = "0x8e8e";
    FA2 counter_196_add_4_29 (.A0(GND_net), .B0(GND_net), .C0(counter[27]), 
        .D0(n1623), .CI0(n1623), .A1(GND_net), .B1(GND_net), .C1(counter[28]), 
        .D1(n2537), .CI1(n2537), .CO0(n2537), .CO1(n1625), .S0(n133[27]), 
        .S1(n133[28]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_29.INIT0 = "0xc33c";
    defparam counter_196_add_4_29.INIT1 = "0xc33c";
    FA2 counter_196_add_4_19 (.A0(GND_net), .B0(GND_net), .C0(counter[17]), 
        .D0(n1613), .CI0(n1613), .A1(GND_net), .B1(GND_net), .C1(counter[18]), 
        .D1(n2516), .CI1(n2516), .CO0(n2516), .CO1(n1615), .S0(n133[17]), 
        .S1(n133[18]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_19.INIT0 = "0xc33c";
    defparam counter_196_add_4_19.INIT1 = "0xc33c";
    FA2 counter_196_add_4_11 (.A0(GND_net), .B0(GND_net), .C0(counter[9]), 
        .D0(n1605), .CI0(n1605), .A1(GND_net), .B1(GND_net), .C1(counter[10]), 
        .D1(n2501), .CI1(n2501), .CO0(n2501), .CO1(n1607), .S0(n133[9]), 
        .S1(n133[10]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_11.INIT0 = "0xc33c";
    defparam counter_196_add_4_11.INIT1 = "0xc33c";
    FA2 counter_196_add_4_27 (.A0(GND_net), .B0(GND_net), .C0(counter[25]), 
        .D0(n1621), .CI0(n1621), .A1(GND_net), .B1(GND_net), .C1(counter[26]), 
        .D1(n2534), .CI1(n2534), .CO0(n2534), .CO1(n1623), .S0(n133[25]), 
        .S1(n133[26]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196_add_4_27.INIT0 = "0xc33c";
    defparam counter_196_add_4_27.INIT1 = "0xc33c";
    LUT4 counter_31__I_0_i34_3_lut (.A(n32), .B(counter[16]), .C(frequency[16]), 
         .Z(n34)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i34_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i16_3_lut (.A(n14), .B(counter[7]), .C(frequency[7]), 
         .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i16_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i14_3_lut (.A(n12), .B(counter[6]), .C(frequency[6]), 
         .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i14_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i12_3_lut (.A(n10), .B(counter[5]), .C(frequency[5]), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i12_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i10_3_lut (.A(n8), .B(counter[4]), .C(frequency[4]), 
         .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i10_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i28_3_lut (.A(n26), .B(counter[13]), .C(frequency[13]), 
         .Z(n28)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i28_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i8_3_lut (.A(n6), .B(counter[3]), .C(frequency[3]), 
         .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i8_3_lut.INIT = "0x8e8e";
    LUT4 i547_2_lut (.A(on_off_sig), .B(sample_N_171), .Z(n724)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam i547_2_lut.INIT = "0x8888";
    LUT4 counter_31__I_0_i6_3_lut (.A(n4), .B(counter[2]), .C(frequency[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i6_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(frequency[1]), 
         .D(frequency[0]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i4_4_lut.INIT = "0x8ecf";
    LUT4 i7_4_lut (.A(counter[22]), .B(counter[29]), .C(counter[27]), 
         .D(counter[30]), .Z(n18_adj_180)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.INIT = "0xfffe";
    LUT4 counter_31__I_0_i26_3_lut (.A(n24), .B(counter[12]), .C(frequency[12]), 
         .Z(n26)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i26_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i24_3_lut (.A(n22), .B(counter[11]), .C(frequency[11]), 
         .Z(n24)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i24_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i22_3_lut (.A(n20_adj_179), .B(counter[10]), .C(frequency[10]), 
         .Z(n22)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i22_3_lut.INIT = "0x8e8e";
    rom_lut get_frequency (.note_7__N_94({note_7__N_94}), .\frequency[16] (frequency[16]), 
            .\frequency[17] (frequency[17]), .\frequency[18] (frequency[18]), 
            .\frequency[19] (frequency[19]), .outclk(outclk), .valid_sig(valid_sig), 
            .GND_net(GND_net), .\frequency[0] (frequency[0]), .\frequency[1] (frequency[1]), 
            .\frequency[2] (frequency[2]), .\frequency[3] (frequency[3]), 
            .\frequency[4] (frequency[4]), .\frequency[5] (frequency[5]), 
            .\frequency[6] (frequency[6]), .\frequency[7] (frequency[7]), 
            .\frequency[8] (frequency[8]), .\frequency[9] (frequency[9]), 
            .\frequency[10] (frequency[10]), .\frequency[11] (frequency[11]), 
            .\frequency[12] (frequency[12]), .\frequency[13] (frequency[13]), 
            .\frequency[14] (frequency[14]), .\frequency[15] (frequency[15]));   /* synthesis lineinfo="@2(31[17],31[24])"*/
    VLO i12 (.Z(GND_net_c));
    FD1P3XZ counter_196__i10 (.D(n133[10]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n724), .Q(counter[10]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_196__i10.REGSET = "RESET";
    defparam counter_196__i10.SRMODE = "CE_OVER_LSR";
    VHI i1 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module rom_lut
//

module rom_lut (note_7__N_94, \frequency[16] , \frequency[17] , \frequency[18] , 
            \frequency[19] , outclk, valid_sig, GND_net, \frequency[0] , 
            \frequency[1] , \frequency[2] , \frequency[3] , \frequency[4] , 
            \frequency[5] , \frequency[6] , \frequency[7] , \frequency[8] , 
            \frequency[9] , \frequency[10] , \frequency[11] , \frequency[12] , 
            \frequency[13] , \frequency[14] , \frequency[15] );
    input [7:0]note_7__N_94;
    output \frequency[16] ;
    output \frequency[17] ;
    output \frequency[18] ;
    output \frequency[19] ;
    input outclk;
    input valid_sig;
    input GND_net;
    output \frequency[0] ;
    output \frequency[1] ;
    output \frequency[2] ;
    output \frequency[3] ;
    output \frequency[4] ;
    output \frequency[5] ;
    output \frequency[6] ;
    output \frequency[7] ;
    output \frequency[8] ;
    output \frequency[9] ;
    output \frequency[10] ;
    output \frequency[11] ;
    output \frequency[12] ;
    output \frequency[13] ;
    output \frequency[14] ;
    output \frequency[15] ;
    
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    wire VCC_net, GND_net_c;
    
    EBR_B mux_23 (.RADDR10(GND_net_c), .RADDR9(GND_net_c), .RADDR8(GND_net_c), 
          .RADDR7(note_7__N_94[7]), .RADDR6(note_7__N_94[6]), .RADDR5(note_7__N_94[5]), 
          .RADDR4(note_7__N_94[4]), .RADDR3(note_7__N_94[3]), .RADDR2(note_7__N_94[2]), 
          .RADDR1(note_7__N_94[1]), .RADDR0(note_7__N_94[0]), .WADDR10(GND_net_c), 
          .WADDR9(GND_net_c), .WADDR8(GND_net_c), .WADDR7(GND_net), .WADDR6(GND_net), 
          .WADDR5(GND_net), .WADDR4(GND_net), .WADDR3(GND_net), .WADDR2(GND_net), 
          .WADDR1(GND_net), .WADDR0(GND_net), .MASK_N15(GND_net), .MASK_N14(GND_net), 
          .MASK_N13(GND_net), .MASK_N12(GND_net), .MASK_N11(GND_net), 
          .MASK_N10(GND_net), .MASK_N9(GND_net), .MASK_N8(GND_net), .MASK_N7(GND_net), 
          .MASK_N6(GND_net), .MASK_N5(GND_net), .MASK_N4(GND_net), .MASK_N3(GND_net), 
          .MASK_N2(GND_net), .MASK_N1(GND_net), .MASK_N0(GND_net), .RCLKE(VCC_net), 
          .RCLK(outclk), .RE(valid_sig), .RDATA15(\frequency[15] ), .RDATA14(\frequency[14] ), 
          .RDATA13(\frequency[13] ), .RDATA12(\frequency[12] ), .RDATA11(\frequency[11] ), 
          .RDATA10(\frequency[10] ), .RDATA9(\frequency[9] ), .RDATA8(\frequency[8] ), 
          .RDATA7(\frequency[7] ), .RDATA6(\frequency[6] ), .RDATA5(\frequency[5] ), 
          .RDATA4(\frequency[4] ), .RDATA3(\frequency[3] ), .RDATA2(\frequency[2] ), 
          .RDATA1(\frequency[1] ), .RDATA0(\frequency[0] ));
    defparam mux_23.INIT_0 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_1 = "0x7944EB0763C4E37C6AA5F9CD91A132F9DCEE0000000000000000000000000000";
    defparam mux_23.INIT_2 = "0xF74B2472544686EBBCA2F58331C3719BB553FCE648D09944EE7748E4A88C0E03";
    defparam mux_23.INIT_3 = "0x2D523F3F523A66557BA69239AA23C37BDE51FAC218E938D65AA97E7EA475CCB0";
    defparam mux_23.INIT_4 = "0x77957EB186398E3596AA9F9FA91CB32BBDD3C91CD511E1BEEF28FD630C731C69";
    defparam mux_23.INIT_5 = "0x2F7532473544386F3BCA3F58431D471A4B554FCF548E59965EE9648E6A8970DE";
    defparam mux_23.INIT_6 = "0x000000000000000000000000000000000000000000000000000000002A472CCB";
    defparam mux_23.INIT_7 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_8 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_9 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_A = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_B = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_C = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_D = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_E = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.INIT_F = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_23.DATA_WIDTH_W = "16";
    defparam mux_23.DATA_WIDTH_R = "16";
    VLO i2 (.Z(GND_net_c));
    EBR_B mux_24 (.RADDR10(GND_net_c), .RADDR9(GND_net_c), .RADDR8(GND_net_c), 
          .RADDR7(note_7__N_94[7]), .RADDR6(note_7__N_94[6]), .RADDR5(note_7__N_94[5]), 
          .RADDR4(note_7__N_94[4]), .RADDR3(note_7__N_94[3]), .RADDR2(note_7__N_94[2]), 
          .RADDR1(note_7__N_94[1]), .RADDR0(note_7__N_94[0]), .WADDR10(GND_net_c), 
          .WADDR9(GND_net_c), .WADDR8(GND_net_c), .WADDR7(GND_net), .WADDR6(GND_net), 
          .WADDR5(GND_net), .WADDR4(GND_net), .WADDR3(GND_net), .WADDR2(GND_net), 
          .WADDR1(GND_net), .WADDR0(GND_net), .MASK_N15(GND_net), .MASK_N14(GND_net), 
          .MASK_N13(GND_net), .MASK_N12(GND_net), .MASK_N11(GND_net), 
          .MASK_N10(GND_net), .MASK_N9(GND_net), .MASK_N8(GND_net), .MASK_N7(GND_net), 
          .MASK_N6(GND_net), .MASK_N5(GND_net), .MASK_N4(GND_net), .MASK_N3(GND_net), 
          .MASK_N2(GND_net), .MASK_N1(GND_net), .MASK_N0(GND_net), .RCLKE(VCC_net), 
          .RCLK(outclk), .RE(valid_sig), .RDATA3(\frequency[19] ), .RDATA2(\frequency[18] ), 
          .RDATA1(\frequency[17] ), .RDATA0(\frequency[16] ));
    defparam mux_24.INIT_0 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_1 = "0x000700070008000800090009000A000B000B0000000000000000000000000000";
    defparam mux_24.INIT_2 = "0x0002000300030003000300030004000400040004000500050005000600060007";
    defparam mux_24.INIT_3 = "0x0001000100010001000100010001000100010001000200020002000200020002";
    defparam mux_24.INIT_4 = "0x0000000000000000000000000000000000000000000000000000000000010001";
    defparam mux_24.INIT_5 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_6 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_7 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_8 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_9 = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_A = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_B = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_C = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_D = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_E = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.INIT_F = "0x0000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_24.DATA_WIDTH_W = "16";
    defparam mux_24.DATA_WIDTH_R = "16";
    VHI i1 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module midi_interpreter
//

module midi_interpreter (tracker, valid_sig, \byte_sig[7] , n2035, n1, 
            outclk, note_sig, \byte_sig[2] , n306, n958, \note_7__N_94[2] , 
            \byte_sig[3] , \note_7__N_94[3] , \byte_sig[4] , \note_7__N_94[4] , 
            n2014, on_off_sig, \byte_sig[6] , \note_7__N_94[6] , n2008, 
            \status_byte[4] , n10, n802, n801, n800, n799, n798, 
            n797, n796, n783, n705, n2036);
    output [1:0]tracker;
    input valid_sig;
    input \byte_sig[7] ;
    output n2035;
    input n1;
    input outclk;
    output [7:0]note_sig;
    input \byte_sig[2] ;
    input n306;
    input n958;
    output \note_7__N_94[2] ;
    input \byte_sig[3] ;
    output \note_7__N_94[3] ;
    input \byte_sig[4] ;
    output \note_7__N_94[4] ;
    input n2014;
    output on_off_sig;
    input \byte_sig[6] ;
    output \note_7__N_94[6] ;
    input n2008;
    output \status_byte[4] ;
    input n10;
    input n802;
    input n801;
    input n800;
    input n799;
    input n798;
    input n797;
    input n796;
    input n783;
    output n705;
    output n2036;
    
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    wire n681, n2024, VCC_net, GND_net;
    
    LUT4 i1_3_lut_4_lut (.A(tracker[1]), .B(tracker[0]), .C(valid_sig), 
         .D(\byte_sig[7] ), .Z(n681)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut.INIT = "0xf0e0";
    LUT4 i1_3_lut_3_lut (.A(tracker[0]), .B(valid_sig), .C(tracker[1]), 
         .Z(n2035)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_3_lut.INIT = "0x8484";
    FD1P3XZ on_off_sig_29 (.D(n2014), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(on_off_sig));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam on_off_sig_29.REGSET = "RESET";
    defparam on_off_sig_29.SRMODE = "CE_OVER_LSR";
    LUT4 mux_165_i3_4_lut (.A(note_sig[2]), .B(\byte_sig[2] ), .C(n306), 
         .D(n958), .Z(\note_7__N_94[2] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(42[4],73[13])"*/
    defparam mux_165_i3_4_lut.INIT = "0xcac0";
    LUT4 mux_165_i4_4_lut (.A(note_sig[3]), .B(\byte_sig[3] ), .C(n306), 
         .D(n958), .Z(\note_7__N_94[3] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(42[4],73[13])"*/
    defparam mux_165_i4_4_lut.INIT = "0xcac0";
    LUT4 mux_165_i5_4_lut (.A(note_sig[4]), .B(\byte_sig[4] ), .C(n306), 
         .D(n958), .Z(\note_7__N_94[4] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(42[4],73[13])"*/
    defparam mux_165_i5_4_lut.INIT = "0xcac0";
    FD1P3XZ status_byte_i0_i4 (.D(n2008), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\status_byte[4] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam status_byte_i0_i4.REGSET = "RESET";
    defparam status_byte_i0_i4.SRMODE = "CE_OVER_LSR";
    LUT4 mux_165_i7_4_lut (.A(note_sig[6]), .B(\byte_sig[6] ), .C(n306), 
         .D(n958), .Z(\note_7__N_94[6] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   /* synthesis lineinfo="@0(42[4],73[13])"*/
    defparam mux_165_i7_4_lut.INIT = "0xcac0";
    FD1P3XZ tracker_i0_i1 (.D(n10), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(tracker[1]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam tracker_i0_i1.REGSET = "RESET";
    defparam tracker_i0_i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i1 (.D(n802), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[1]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i1.REGSET = "RESET";
    defparam data_byte_i0_i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i2 (.D(n801), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[2]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i2.REGSET = "RESET";
    defparam data_byte_i0_i2.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i3 (.D(n800), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[3]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i3.REGSET = "RESET";
    defparam data_byte_i0_i3.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i4 (.D(n799), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[4]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i4.REGSET = "RESET";
    defparam data_byte_i0_i4.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i5 (.D(n798), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[5]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i5.REGSET = "RESET";
    defparam data_byte_i0_i5.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i6 (.D(n797), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[6]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i6.REGSET = "RESET";
    defparam data_byte_i0_i6.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i7 (.D(n796), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[7]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i7.REGSET = "RESET";
    defparam data_byte_i0_i7.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i0 (.D(n783), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(note_sig[0]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i0.REGSET = "RESET";
    defparam data_byte_i0_i0.SRMODE = "CE_OVER_LSR";
    LUT4 i530_2_lut (.A(tracker[0]), .B(tracker[1]), .Z(n705)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@0(42[4],73[13])"*/
    defparam i530_2_lut.INIT = "0x2222";
    LUT4 i1_2_lut (.A(tracker[1]), .B(valid_sig), .Z(n2024)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i1_2_lut.INIT = "0x8888";
    LUT4 i1_3_lut_4_lut_4_lut (.A(tracker[1]), .B(tracker[0]), .C(valid_sig), 
         .D(\byte_sig[7] ), .Z(n2036)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_4_lut.INIT = "0xc0d0";
    FD1P3XZ tracker_i0_i0 (.D(n1), .SP(n681), .CK(outclk), .SR(n2024), 
            .Q(tracker[0]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam tracker_i0_i0.REGSET = "RESET";
    defparam tracker_i0_i0.SRMODE = "CE_OVER_LSR";
    VLO i3 (.Z(GND_net));
    VHI i2 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module \midi_reciever(996) 
//

module \midi_reciever(996)  (p2, \clock_counter[8] , \clock_counter[7] , 
            \clock_counter[6] , \clock_counter[5] , \clock_counter[4] , 
            \clock_counter[3] , \clock_counter[2] , p3, p1, outclk, 
            tracker, n226, data, GND_net, \clock_counter[0] , n1180, 
            n659, n2028, \bit_index[0] , n627, n639, n632, \clock_counter[9] , 
            valid_sig, byte_sig, tracker_adj_5, \note_sig[0] , n958, 
            \note_7__N_94[0] , \note_sig[5] , n306, \note_7__N_94[5] , 
            \note_sig[1] , \note_7__N_94[1] , n793, n807, n806, n805, 
            n804, n803, n795, n794, n787, \note_sig[7] , \note_7__N_94[7] , 
            \clock_counter[1] , n783, serial_c, n802, n1, n2043, 
            n2038, n10, n798, n4, n4_adj_3, n796, n4_adj_4);
    output p2;
    output \clock_counter[8] ;
    output \clock_counter[7] ;
    output \clock_counter[6] ;
    output \clock_counter[5] ;
    output \clock_counter[4] ;
    output \clock_counter[3] ;
    output \clock_counter[2] ;
    output p3;
    output p1;
    input outclk;
    output [1:0]tracker;
    input n226;
    output data;
    input GND_net;
    output \clock_counter[0] ;
    output n1180;
    output n659;
    output n2028;
    output \bit_index[0] ;
    output n627;
    output n639;
    output n632;
    output \clock_counter[9] ;
    output valid_sig;
    output [7:0]byte_sig;
    input [1:0]tracker_adj_5;
    input \note_sig[0] ;
    output n958;
    output \note_7__N_94[0] ;
    input \note_sig[5] ;
    output n306;
    output \note_7__N_94[5] ;
    input \note_sig[1] ;
    output \note_7__N_94[1] ;
    input n793;
    input n807;
    input n806;
    input n805;
    input n804;
    input n803;
    input n795;
    input n794;
    input n787;
    input \note_sig[7] ;
    output \note_7__N_94[7] ;
    output \clock_counter[1] ;
    output n783;
    input serial_c;
    output n802;
    output n1;
    output n2043;
    output n2038;
    output n10;
    output n798;
    output n4;
    output n4_adj_3;
    output n796;
    output n4_adj_4;
    
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    wire [9:0]n227;
    
    wire n661, n728;
    wire [1:0]tracker_1__N_9;
    
    wire n240, n733, data_r;
    wire [9:0]clock_counter;   /* synthesis lineinfo="@1(26[10],26[23])"*/
    
    wire n8, n647, n4_c, n1634, n2504, n1636;
    wire [9:0]n57;
    wire [2:0]bit_index;   /* synthesis lineinfo="@1(27[10],27[19])"*/
    wire [2:0]n80;
    
    wire n742, n128;
    wire [1:0]tracker_1__N_47;
    
    wire n2, n19, n604, n779, n971, n966, n1632, n2480, VCC_net, 
        n961, n1638, n2525, n1630, n2477, n1205, n2522, n2474, 
        n2126, n1_adj_176, GND_net_c;
    
    FD1P3XZ tracker_i0 (.D(tracker_1__N_9[0]), .SP(VCC_net), .CK(outclk), 
            .SR(GND_net_c), .Q(tracker[0]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam tracker_i0.REGSET = "RESET";
    defparam tracker_i0.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_r_61 (.D(data), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(data_r));   /* synthesis lineinfo="@1(35[5],38[12])"*/
    defparam data_r_61.REGSET = "RESET";
    defparam data_r_61.SRMODE = "CE_OVER_LSR";
    LUT4 i1968_3_lut (.A(n661), .B(n226), .C(n240), .Z(n733)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1968_3_lut.INIT = "0xa2a2";
    FD1P3XZ clock_counter_i0_i5 (.D(n227[5]), .SP(n661), .CK(outclk), 
            .SR(n728), .Q(clock_counter[5]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i5.REGSET = "SET";
    defparam clock_counter_i0_i5.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i6 (.D(n227[6]), .SP(n661), .CK(outclk), 
            .SR(n728), .Q(clock_counter[6]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i6.REGSET = "SET";
    defparam clock_counter_i0_i6.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i0 (.D(n227[0]), .SP(n661), .CK(outclk), 
            .SR(n728), .Q(\clock_counter[0] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i0.REGSET = "SET";
    defparam clock_counter_i0_i0.SRMODE = "CE_OVER_LSR";
    LUT4 i4_4_lut (.A(clock_counter[8]), .B(n8), .C(n647), .D(n4_c), 
         .Z(n240)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4_4_lut.INIT = "0x0800";
    FA2 add_45_add_4_7 (.A0(GND_net), .B0(clock_counter[5]), .C0(GND_net), 
        .D0(n1634), .CI0(n1634), .A1(GND_net), .B1(clock_counter[6]), 
        .C1(GND_net), .D1(n2504), .CI1(n2504), .CO0(n2504), .CO1(n1636), 
        .S0(n57[5]), .S1(n57[6]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_7.INIT0 = "0xc33c";
    defparam add_45_add_4_7.INIT1 = "0xc33c";
    FD1P3XZ bit_index_i1 (.D(n80[1]), .SP(n659), .CK(outclk), .SR(n742), 
            .Q(bit_index[1]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam bit_index_i1.REGSET = "RESET";
    defparam bit_index_i1.SRMODE = "CE_OVER_LSR";
    LUT4 i1004_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n1180)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1004_2_lut.INIT = "0x8888";
    FD1P3XZ bit_index_i2 (.D(n80[2]), .SP(n659), .CK(outclk), .SR(n742), 
            .Q(bit_index[2]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam bit_index_i2.REGSET = "RESET";
    defparam bit_index_i2.SRMODE = "CE_OVER_LSR";
    LUT4 tracker_1__I_0_69_Mux_0_i2_3_lut_4_lut (.A(n2028), .B(n128), .C(tracker[0]), 
         .D(tracker_1__N_47[1]), .Z(n2)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   /* synthesis lineinfo="@1(83[4],99[11])"*/
    defparam tracker_1__I_0_69_Mux_0_i2_3_lut_4_lut.INIT = "0xf808";
    LUT4 i1_3_lut_4_lut (.A(n2028), .B(n128), .C(tracker[1]), .D(tracker[0]), 
         .Z(n742)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (C+(D)))) */ ;   /* synthesis lineinfo="@1(83[4],99[11])"*/
    defparam i1_3_lut_4_lut.INIT = "0x008f";
    LUT4 i1_2_lut_4_lut (.A(n19), .B(tracker[1]), .C(tracker[0]), .D(\bit_index[0] ), 
         .Z(n627)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1_2_lut_4_lut.INIT = "0xfbff";
    LUT4 i1_2_lut_4_lut_adj_1 (.A(n19), .B(tracker[1]), .C(tracker[0]), 
         .D(\bit_index[0] ), .Z(n639)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1_2_lut_4_lut_adj_1.INIT = "0xfffb";
    LUT4 i1_2_lut (.A(clock_counter[3]), .B(clock_counter[2]), .Z(n632)) /* synthesis lut_function=(A+(B)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut.INIT = "0xeeee";
    LUT4 i2_3_lut (.A(\clock_counter[9] ), .B(n647), .C(n604), .Z(n19)) /* synthesis lut_function=(A+(B+(C))) */ ;   /* synthesis lineinfo="@1(83[7],83[39])"*/
    defparam i2_3_lut.INIT = "0xfefe";
    LUT4 i602_3_lut_4_lut (.A(tracker_1__N_47[1]), .B(tracker[0]), .C(valid_sig), 
         .D(tracker[1]), .Z(n779)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i602_3_lut_4_lut.INIT = "0xf400";
    LUT4 i1_2_lut_3_lut_4_lut (.A(byte_sig[5]), .B(tracker_adj_5[0]), .C(tracker_adj_5[1]), 
         .D(byte_sig[7]), .Z(n971)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_3_lut_4_lut.INIT = "0x0008";
    FD1P3XZ clock_counter_i0_i7 (.D(n227[7]), .SP(n661), .CK(outclk), 
            .SR(n728), .Q(clock_counter[7]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i7.REGSET = "SET";
    defparam clock_counter_i0_i7.SRMODE = "CE_OVER_LSR";
    LUT4 i1_3_lut_4_lut_adj_2 (.A(tracker[0]), .B(clock_counter[3]), .C(clock_counter[2]), 
         .D(tracker[1]), .Z(n4_c)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_2.INIT = "0x0102";
    LUT4 i3_3_lut_4_lut (.A(clock_counter[6]), .B(clock_counter[5]), .C(clock_counter[7]), 
         .D(\clock_counter[9] ), .Z(n8)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_3_lut_4_lut.INIT = "0x0080";
    LUT4 i1_2_lut_3_lut (.A(\note_sig[0] ), .B(n958), .C(n966), .Z(\note_7__N_94[0] )) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_3_lut.INIT = "0xf8f8";
    LUT4 i1019_2_lut (.A(n57[5]), .B(n226), .Z(n227[5])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1019_2_lut.INIT = "0x8888";
    LUT4 i1020_2_lut (.A(n57[6]), .B(n226), .Z(n227[6])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1020_2_lut.INIT = "0x8888";
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(\note_sig[5] ), .B(n958), .C(byte_sig[5]), 
         .D(n306), .Z(\note_7__N_94[5] )) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_3_lut_4_lut_adj_3.INIT = "0xf888";
    FA2 add_45_add_4_5 (.A0(GND_net), .B0(clock_counter[3]), .C0(GND_net), 
        .D0(n1632), .CI0(n1632), .A1(GND_net), .B1(\clock_counter[4] ), 
        .C1(GND_net), .D1(n2480), .CI1(n2480), .CO0(n2480), .CO1(n1634), 
        .S0(n57[3]), .S1(n57[4]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_5.INIT0 = "0xc33c";
    defparam add_45_add_4_5.INIT1 = "0xc33c";
    LUT4 i1_3_lut_4_lut_adj_4 (.A(tracker_1__N_47[1]), .B(n19), .C(tracker[0]), 
         .D(tracker[1]), .Z(n659)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_4.INIT = "0x040f";
    FD1P3XZ tracker_i1 (.D(tracker_1__N_9[1]), .SP(VCC_net), .CK(outclk), 
            .SR(GND_net_c), .Q(tracker[1]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam tracker_i1.REGSET = "RESET";
    defparam tracker_i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i8 (.D(n227[8]), .SP(n661), .CK(outclk), 
            .SR(n728), .Q(clock_counter[8]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i8.REGSET = "SET";
    defparam clock_counter_i0_i8.SRMODE = "CE_OVER_LSR";
    FD1P3XZ valid_sig_62 (.D(n779), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(valid_sig));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam valid_sig_62.REGSET = "RESET";
    defparam valid_sig_62.SRMODE = "CE_OVER_LSR";
    LUT4 i1_2_lut_3_lut_4_lut_adj_5 (.A(\note_sig[1] ), .B(n958), .C(byte_sig[1]), 
         .D(n306), .Z(\note_7__N_94[1] )) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_3_lut_4_lut_adj_5.INIT = "0xf888";
    FD1P3XZ bit_index_i0 (.D(n793), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(\bit_index[0] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam bit_index_i0.REGSET = "RESET";
    defparam bit_index_i0.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i7 (.D(n807), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[7]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i7.REGSET = "RESET";
    defparam byte_sig_i7.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i6 (.D(n806), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[6]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i6.REGSET = "RESET";
    defparam byte_sig_i6.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i5 (.D(n805), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[5]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i5.REGSET = "RESET";
    defparam byte_sig_i5.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i4 (.D(n804), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[4]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i4.REGSET = "RESET";
    defparam byte_sig_i4.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i3 (.D(n803), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[3]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i3.REGSET = "RESET";
    defparam byte_sig_i3.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i2 (.D(n795), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[2]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i2.REGSET = "RESET";
    defparam byte_sig_i2.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i1 (.D(n794), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[1]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i1.REGSET = "RESET";
    defparam byte_sig_i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i0 (.D(n787), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[0]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i0.REGSET = "RESET";
    defparam byte_sig_i0.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i1 (.D(n227[1]), .SP(n661), .CK(outclk), 
            .SR(n728), .Q(\clock_counter[1] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i1.REGSET = "SET";
    defparam clock_counter_i0_i1.SRMODE = "CE_OVER_LSR";
    LUT4 i1_2_lut_adj_6 (.A(\note_sig[7] ), .B(n958), .Z(\note_7__N_94[7] )) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_adj_6.INIT = "0x8888";
    FD1P3XZ clock_counter_i0_i9 (.D(n57[9]), .SP(n661), .CK(outclk), .SR(n733), 
            .Q(\clock_counter[9] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i9.REGSET = "RESET";
    defparam clock_counter_i0_i9.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i2 (.D(n57[2]), .SP(n661), .CK(outclk), .SR(n733), 
            .Q(clock_counter[2]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i2.REGSET = "RESET";
    defparam clock_counter_i0_i2.SRMODE = "CE_OVER_LSR";
    LUT4 i1_4_lut_4_lut (.A(\note_sig[0] ), .B(n958), .C(valid_sig), .D(n966), 
         .Z(n783)) /* synthesis lut_function=(A (B+((D)+!C))+!A (C (D))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_4_lut_4_lut.INIT = "0xfa8a";
    LUT4 i780_3_lut (.A(byte_sig[7]), .B(tracker_adj_5[0]), .C(tracker_adj_5[1]), 
         .Z(n958)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   /* synthesis lineinfo="@0(24[10],24[17])"*/
    defparam i780_3_lut.INIT = "0x3a3a";
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(byte_sig[0]), .B(tracker_adj_5[0]), 
         .C(tracker_adj_5[1]), .D(byte_sig[7]), .Z(n966)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_3_lut_4_lut_adj_7.INIT = "0x0008";
    LUT4 i1000_2_lut (.A(n57[0]), .B(n226), .Z(n227[0])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1000_2_lut.INIT = "0x8888";
    IOL_B data_60 (.PADDI(serial_c), .DO1(GND_net_c), .DO0(GND_net_c), 
          .CE(VCC_net), .IOLTO(GND_net_c), .HOLD(GND_net_c), .INCLK(outclk), 
          .OUTCLK(GND_net_c), .DI0(data));   /* synthesis lineinfo="@1(35[5],38[12])"*/
    defparam data_60.LATCHIN = "NONE_REG";
    defparam data_60.DDROUT = "NO";
    FD1P3XZ clock_counter_i0_i3 (.D(n57[3]), .SP(n661), .CK(outclk), .SR(n733), 
            .Q(clock_counter[3]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i3.REGSET = "RESET";
    defparam clock_counter_i0_i3.SRMODE = "CE_OVER_LSR";
    LUT4 i2_2_lut_3_lut (.A(bit_index[1]), .B(\bit_index[0] ), .C(bit_index[2]), 
         .Z(n2028)) /* synthesis lut_function=(A (B (C))) */ ;   /* synthesis lineinfo="@1(90[20],90[29])"*/
    defparam i2_2_lut_3_lut.INIT = "0x8080";
    LUT4 i215_2_lut (.A(bit_index[1]), .B(\bit_index[0] ), .Z(n80[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(90[20],90[29])"*/
    defparam i215_2_lut.INIT = "0x6666";
    LUT4 i1_4_lut_4_lut_adj_8 (.A(\note_sig[1] ), .B(n958), .C(valid_sig), 
         .D(n961), .Z(n802)) /* synthesis lut_function=(A (B+((D)+!C))+!A (C (D))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_4_lut_4_lut_adj_8.INIT = "0xfa8a";
    LUT4 i1_2_lut_3_lut_adj_9 (.A(tracker_adj_5[0]), .B(tracker_adj_5[1]), 
         .C(byte_sig[7]), .Z(n306)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_3_lut_adj_9.INIT = "0x0202";
    LUT4 i1_2_lut_adj_10 (.A(byte_sig[7]), .B(tracker_adj_5[0]), .Z(n1)) /* synthesis lut_function=(A+!(B)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_adj_10.INIT = "0xbbbb";
    LUT4 i41_2_lut_3_lut (.A(n604), .B(n2043), .C(n19), .Z(n128)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@1(83[4],99[11])"*/
    defparam i41_2_lut_3_lut.INIT = "0x1010";
    LUT4 i1021_2_lut (.A(n57[7]), .B(n226), .Z(n227[7])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1021_2_lut.INIT = "0x8888";
    LUT4 i1_2_lut_3_lut_4_lut_adj_11 (.A(clock_counter[6]), .B(clock_counter[5]), 
         .C(clock_counter[7]), .D(clock_counter[8]), .Z(n2038)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_11.INIT = "0x8000";
    LUT4 i1022_2_lut (.A(n57[8]), .B(n226), .Z(n227[8])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1022_2_lut.INIT = "0x8888";
    FA2 add_45_add_4_11 (.A0(GND_net), .B0(\clock_counter[9] ), .C0(GND_net), 
        .D0(n1638), .CI0(n1638), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n2525), .CI1(n2525), .CO0(n2525), .S0(n57[9]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_11.INIT0 = "0xc33c";
    defparam add_45_add_4_11.INIT1 = "0xc33c";
    FA2 add_45_add_4_3 (.A0(GND_net), .B0(\clock_counter[1] ), .C0(GND_net), 
        .D0(n1630), .CI0(n1630), .A1(GND_net), .B1(clock_counter[2]), 
        .C1(GND_net), .D1(n2477), .CI1(n2477), .CO0(n2477), .CO1(n1632), 
        .S0(n57[1]), .S1(n57[2]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_3.INIT0 = "0xc33c";
    defparam add_45_add_4_3.INIT1 = "0xc33c";
    LUT4 i2_2_lut_3_lut_adj_12 (.A(\clock_counter[1] ), .B(\clock_counter[4] ), 
         .C(\clock_counter[0] ), .Z(n647)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   /* synthesis lineinfo="@1(83[7],83[39])"*/
    defparam i2_2_lut_3_lut_adj_12.INIT = "0xf7f7";
    LUT4 i1029_2_lut (.A(clock_counter[7]), .B(clock_counter[8]), .Z(n1205)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1029_2_lut.INIT = "0x8888";
    FA2 add_45_add_4_9 (.A0(GND_net), .B0(clock_counter[7]), .C0(GND_net), 
        .D0(n1636), .CI0(n1636), .A1(GND_net), .B1(clock_counter[8]), 
        .C1(GND_net), .D1(n2522), .CI1(n2522), .CO0(n2522), .CO1(n1638), 
        .S0(n57[7]), .S1(n57[8]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_9.INIT0 = "0xc33c";
    defparam add_45_add_4_9.INIT1 = "0xc33c";
    FA2 add_45_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(\clock_counter[0] ), .C1(VCC_net), .D1(n2474), .CI1(n2474), 
        .CO0(n2474), .CO1(n1630), .S1(n57[0]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_1.INIT0 = "0xc33c";
    defparam add_45_add_4_1.INIT1 = "0xc33c";
    LUT4 i1966_2_lut_3_lut_4_lut (.A(n604), .B(n2043), .C(tracker[0]), 
         .D(tracker[1]), .Z(n661)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1966_2_lut_3_lut_4_lut.INIT = "0xefff";
    LUT4 i1_3_lut_4_lut_adj_13 (.A(\clock_counter[9] ), .B(\clock_counter[1] ), 
         .C(\clock_counter[4] ), .D(\clock_counter[0] ), .Z(n2043)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   /* synthesis lineinfo="@1(104[14],104[44])"*/
    defparam i1_3_lut_4_lut_adj_13.INIT = "0xf7ff";
    LUT4 i1970_4_lut (.A(valid_sig), .B(tracker_adj_5[1]), .C(n306), .D(n2126), 
         .Z(n10)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B)) */ ;   /* synthesis lineinfo="@0(24[10],24[17])"*/
    defparam i1970_4_lut.INIT = "0xe4c4";
    LUT4 i1_4_lut_4_lut_adj_14 (.A(\note_sig[5] ), .B(n958), .C(valid_sig), 
         .D(n971), .Z(n798)) /* synthesis lut_function=(A (B+((D)+!C))+!A (C (D))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_4_lut_4_lut_adj_14.INIT = "0xfa8a";
    LUT4 i1833_2_lut (.A(byte_sig[7]), .B(tracker_adj_5[0]), .Z(n2126)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1833_2_lut.INIT = "0xeeee";
    LUT4 equal_16_i4_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n4)) /* synthesis lut_function=(A+!(B)) */ ;   /* synthesis lineinfo="@1(86[15],86[24])"*/
    defparam equal_16_i4_2_lut.INIT = "0xbbbb";
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(byte_sig[1]), .B(tracker_adj_5[0]), 
         .C(tracker_adj_5[1]), .D(byte_sig[7]), .Z(n961)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut_3_lut_4_lut_adj_15.INIT = "0x0008";
    LUT4 equal_19_i4_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n4_adj_3)) /* synthesis lut_function=((B)+!A) */ ;   /* synthesis lineinfo="@1(86[15],86[24])"*/
    defparam equal_19_i4_2_lut.INIT = "0xdddd";
    LUT4 tracker_1__I_0_69_Mux_0_i3_3_lut (.A(n1_adj_176), .B(n2), .C(tracker[1]), 
         .Z(tracker_1__N_9[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam tracker_1__I_0_69_Mux_0_i3_3_lut.INIT = "0xcaca";
    LUT4 i222_2_lut_3_lut (.A(bit_index[1]), .B(\bit_index[0] ), .C(bit_index[2]), 
         .Z(n80[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   /* synthesis lineinfo="@1(90[20],90[29])"*/
    defparam i222_2_lut_3_lut.INIT = "0x7878";
    LUT4 i290_3_lut_4_lut (.A(n19), .B(tracker[0]), .C(tracker_1__N_47[1]), 
         .D(data_r), .Z(n1_adj_176)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(D)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i290_3_lut_4_lut.INIT = "0x80f7";
    LUT4 tracker_1__I_0_69_Mux_1_i3_4_lut_4_lut (.A(n19), .B(tracker[0]), 
         .C(tracker_1__N_47[1]), .D(tracker[1]), .Z(tracker_1__N_9[1])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (C (D))+!B (D))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam tracker_1__I_0_69_Mux_1_i3_4_lut_4_lut.INIT = "0xf308";
    LUT4 i86_3_lut (.A(\note_sig[7] ), .B(valid_sig), .C(n958), .Z(n796)) /* synthesis lut_function=(A ((C)+!B)) */ ;   /* synthesis lineinfo="@0(24[10],24[17])"*/
    defparam i86_3_lut.INIT = "0xa2a2";
    LUT4 i1018_2_lut (.A(n57[4]), .B(n226), .Z(n227[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1018_2_lut.INIT = "0x8888";
    LUT4 i557_2_lut (.A(n661), .B(n240), .Z(n728)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i557_2_lut.INIT = "0x8888";
    LUT4 equal_21_i4_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n4_adj_4)) /* synthesis lut_function=(A+(B)) */ ;   /* synthesis lineinfo="@1(86[15],86[24])"*/
    defparam equal_21_i4_2_lut.INIT = "0xeeee";
    LUT4 i1_2_lut_adj_16 (.A(n604), .B(n2043), .Z(tracker_1__N_47[1])) /* synthesis lut_function=(A+(B)) */ ;   /* synthesis lineinfo="@1(104[14],104[44])"*/
    defparam i1_2_lut_adj_16.INIT = "0xeeee";
    LUT4 i1_4_lut (.A(n632), .B(clock_counter[6]), .C(n1205), .D(clock_counter[5]), 
         .Z(n604)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut.INIT = "0xbfff";
    LUT4 i1017_2_lut (.A(n57[1]), .B(n226), .Z(n227[1])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1017_2_lut.INIT = "0x8888";
    VLO i3 (.Z(GND_net_c));
    FD1P3XZ clock_counter_i0_i4 (.D(n227[4]), .SP(n661), .CK(outclk), 
            .SR(n728), .Q(\clock_counter[4] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i4.REGSET = "SET";
    defparam clock_counter_i0_i4.SRMODE = "CE_OVER_LSR";
    VHI i1 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module pll
//

module pll (GND_net, inputclk, outclk);
    input GND_net;
    input inputclk;
    output outclk;
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    \lscc_pll(DIVR="3",DIVF="82",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="48.000000")  lscc_pll_inst (.GND_net(GND_net), 
            .inputclk(inputclk), .outclk(outclk));   /* synthesis lineinfo="@3(34[5],47[18])"*/
    
endmodule

//
// Verilog Description of module \lscc_pll(DIVR="3",DIVF="82",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="48.000000") 
//

module \lscc_pll(DIVR="3",DIVF="82",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="48.000000")  (GND_net, 
            inputclk, outclk);
    input GND_net;
    input inputclk;
    output outclk;
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    wire VCC_net, feedback_w;
    
    PLL_B u_PLL_B (.REFERENCECLK(inputclk), .FEEDBACK(feedback_w), .DYNAMICDELAY7(GND_net), 
          .DYNAMICDELAY6(GND_net), .DYNAMICDELAY5(GND_net), .DYNAMICDELAY4(GND_net), 
          .DYNAMICDELAY3(GND_net), .DYNAMICDELAY2(GND_net), .DYNAMICDELAY1(GND_net), 
          .DYNAMICDELAY0(GND_net), .BYPASS(GND_net), .RESET_N(VCC_net), 
          .SCLK(GND_net), .SDI(GND_net), .LATCH(GND_net), .INTFBOUT(feedback_w), 
          .OUTGLOBAL(outclk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=41, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=34, LSE_RLINE=47 */ ;   /* synthesis lineinfo="@3(34[5],47[18])"*/
    defparam u_PLL_B.FEEDBACK_PATH = "SIMPLE";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
    defparam u_PLL_B.FDA_FEEDBACK = "0";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
    defparam u_PLL_B.FDA_RELATIVE = "0";
    defparam u_PLL_B.SHIFTREG_DIV_MODE = "0";
    defparam u_PLL_B.PLLOUT_SELECT_PORTA = "GENCLK";
    defparam u_PLL_B.PLLOUT_SELECT_PORTB = "GENCLK";
    defparam u_PLL_B.DIVR = "3";
    defparam u_PLL_B.DIVF = "82";
    defparam u_PLL_B.DIVQ = "5";
    defparam u_PLL_B.FILTER_RANGE = "1";
    defparam u_PLL_B.EXTERNAL_DIVIDE_FACTOR = "NONE";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTA = "0";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTB = "0";
    defparam u_PLL_B.TEST_MODE = "0";
    defparam u_PLL_B.FREQUENCY_PIN_REFERENCECLK = "48.000000";
    VHI i1 (.Z(VCC_net));
    
endmodule
