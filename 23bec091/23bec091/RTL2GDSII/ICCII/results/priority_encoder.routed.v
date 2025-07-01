// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/2/2025 at 5:47:46
// Library Name: PRIORITY_ENCODER_LIB
// Block Name: priority_encoder
// User Label: 
// Write Command: write_verilog ./results/priority_encoder.routed.v
module priority_encoder ( Clock , d , q , v ) ;
input  Clock ;
input  [3:0] d ;
output [1:0] q ;
output v ;

DFFX1_RVT \q_reg[1] ( .D ( N6 ) , .CLK ( ctosc_drc_0 ) , .Q ( q[1] ) ) ;
DFFX1_RVT \q_reg[0] ( .D ( N5 ) , .CLK ( ctosc_drc_0 ) , .Q ( q[0] ) ) ;
DFFX1_RVT v_reg ( .D ( N7 ) , .CLK ( ctosc_drc_0 ) , .Q ( v ) ) ;
INVX2_RVT HFSINV_165_0 ( .A ( d[2] ) , .Y ( HFSNET_0 ) ) ;
NBUFFX2_RVT ctosc_drc_inst_336 ( .A ( ctosc_drc_1 ) , .Y ( ctosc_drc_0 ) ) ;
NBUFFX16_RVT ctosc_drc_inst_427 ( .A ( Clock ) , .Y ( ctosc_drc_1 ) ) ;
OR3X1_RVT U14 ( .A1 ( d[1] ) , .A2 ( d[0] ) , .A3 ( N6 ) , .Y ( N7 ) ) ;
OR2X1_RVT U16 ( .A1 ( d[3] ) , .A2 ( d[2] ) , .Y ( N6 ) ) ;
AND2X1_RVT U17 ( .A1 ( d[1] ) , .A2 ( HFSNET_0 ) , .Y ( n10 ) ) ;
OR2X1_RVT U18 ( .A1 ( d[3] ) , .A2 ( n10 ) , .Y ( N5 ) ) ;
endmodule


