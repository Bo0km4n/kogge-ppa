// `include "arch.v"
module ppa(A, B, CO, S);
   input [15:0] A;
   input [15:0] B;
   output       CO;
   output [15:0] S;

   wire [15:0]   p;
   wire [15:0]   g;
   wire [15:0]   ab;
   wire [15:0]   c;

   OR2 u0 (.A(A[0]), .B(B[0]), .Y(p[0]));
   OR2 u1 (.A(A[1]), .B(B[1]), .Y(p[1]));
   OR2 u2 (.A(A[2]), .B(B[2]), .Y(p[2]));
   OR2 u3 (.A(A[3]), .B(B[3]), .Y(p[3]));
   OR2 u4 (.A(A[4]), .B(B[4]), .Y(p[4]));
   OR2 u5 (.A(A[5]), .B(B[5]), .Y(p[5]));
   OR2 u6 (.A(A[6]), .B(B[6]), .Y(p[6]));
   OR2 u7 (.A(A[7]), .B(B[7]), .Y(p[7]));
   OR2 u8 (.A(A[8]), .B(B[8]), .Y(p[8]));
   OR2 u9 (.A(A[9]), .B(B[9]), .Y(p[9]));
   OR2 u10 (.A(A[10]), .B(B[10]), .Y(p[10]));
   OR2 u11 (.A(A[11]), .B(B[11]), .Y(p[11]));
   OR2 u12 (.A(A[12]), .B(B[12]), .Y(p[12]));
   OR2 u13 (.A(A[13]), .B(B[13]), .Y(p[13]));
   OR2 u14 (.A(A[14]), .B(B[14]), .Y(p[14]));
   OR2 u15 (.A(A[15]), .B(B[15]), .Y(p[15]));

   AN2 v0 (.A(A[0]), .B(B[0]), .Y(g[0]));
   AN2 v1 (.A(A[1]), .B(B[1]), .Y(g[1]));
   AN2 v2 (.A(A[2]), .B(B[2]), .Y(g[2]));
   AN2 v3 (.A(A[3]), .B(B[3]), .Y(g[3]));
   AN2 v4 (.A(A[4]), .B(B[4]), .Y(g[4]));
   AN2 v5 (.A(A[5]), .B(B[5]), .Y(g[5]));
   AN2 v6 (.A(A[6]), .B(B[6]), .Y(g[6]));
   AN2 v7 (.A(A[7]), .B(B[7]), .Y(g[7]));
   AN2 v8 (.A(A[8]), .B(B[8]), .Y(g[8]));
   AN2 v9 (.A(A[9]), .B(B[9]), .Y(g[9]));
   AN2 v10 (.A(A[10]), .B(B[10]), .Y(g[10]));
   AN2 v11 (.A(A[11]), .B(B[11]), .Y(g[11]));
   AN2 v12 (.A(A[12]), .B(B[12]), .Y(g[12]));
   AN2 v13 (.A(A[13]), .B(B[13]), .Y(g[13]));
   AN2 v14 (.A(A[14]), .B(B[14]), .Y(g[14]));
   AN2 v15 (.A(A[15]), .B(B[15]), .Y(g[15]));

   XOR w0 (.A(A[0]), .B(B[0]), .Y(ab[0]));
   XOR w1 (.A(A[1]), .B(B[1]), .Y(ab[1]));
   XOR w2 (.A(A[2]), .B(B[2]), .Y(ab[2]));
   XOR w3 (.A(A[3]), .B(B[3]), .Y(ab[3]));
   XOR w4 (.A(A[4]), .B(B[4]), .Y(ab[4]));
   XOR w5 (.A(A[5]), .B(B[5]), .Y(ab[5]));
   XOR w6 (.A(A[6]), .B(B[6]), .Y(ab[6]));
   XOR w7 (.A(A[7]), .B(B[7]), .Y(ab[7]));
   XOR w8 (.A(A[8]), .B(B[8]), .Y(ab[8]));
   XOR w9 (.A(A[9]), .B(B[9]), .Y(ab[9]));
   XOR w10 (.A(A[10]), .B(B[10]), .Y(ab[10]));
   XOR w11 (.A(A[11]), .B(B[11]), .Y(ab[11]));
   XOR w12 (.A(A[12]), .B(B[12]), .Y(ab[12]));
   XOR w13 (.A(A[13]), .B(B[13]), .Y(ab[13]));
   XOR w14 (.A(A[14]), .B(B[14]), .Y(ab[14]));
   XOR w15 (.A(A[15]), .B(B[15]), .Y(ab[15]));

   kogge carry_adder (.P(p), .G(g), .C(c));
   assign S[0] = ab[0];
   XOR x1 (.A(ab[1]), .B(c[0]), .Y(S[1]));
   XOR x2 (.A(ab[2]), .B(c[1]), .Y(S[2]));
   XOR x3 (.A(ab[3]), .B(c[2]), .Y(S[3]));
   XOR x4 (.A(ab[4]), .B(c[3]), .Y(S[4]));
   XOR x5 (.A(ab[5]), .B(c[4]), .Y(S[5]));
   XOR x6 (.A(ab[6]), .B(c[5]), .Y(S[6]));
   XOR x7 (.A(ab[7]), .B(c[6]), .Y(S[7]));
   XOR x8 (.A(ab[8]), .B(c[7]), .Y(S[8]));
   XOR x9 (.A(ab[9]), .B(c[8]), .Y(S[9]));
   XOR x10 (.A(ab[10]), .B(c[9]), .Y(S[10]));
   XOR x11 (.A(ab[11]), .B(c[10]), .Y(S[11]));
   XOR x12 (.A(ab[12]), .B(c[11]), .Y(S[12]));
   XOR x13 (.A(ab[13]), .B(c[12]), .Y(S[13]));
   XOR x14 (.A(ab[14]), .B(c[13]), .Y(S[14]));
   XOR x15 (.A(ab[15]), .B(c[14]), .Y(S[15]));
   assign CO = c[15];
   
endmodule // ppa

module box(Pi, Gi, Pj, Gj, Pij, Gij);
   input Pi, Gi, Pj, Gj;
   output Pij, Gij;

   wire   w1;

   AN2 U1_1 ( .A(Pi), .B(Gj), .Y(w1) );
   AN2 U1_2 ( .A(Pi), .B(Pj), .Y(Pij) );
   OR2 U1_3 ( .A(Gi), .B(w1), .Y(Gij) );

endmodule // box

module buffer(Pi, Gi, Po, Go);
    input Pi, Gi;
    output Po, Go;

    assign Po = Pi;
    assign Go = Gi;
endmodule

module kogge(P, G, C);
    input [15:0] P, G;
    output [15:0] C;

    wire [15:0] p1, g1, p2, g2, p3, g3;
    wire trash;

    // First step
    buffer b1_0 (.Pi(P[0]), .Gi(G[0]), .Po(p1[0]), .Go(g1[0]));
    box u1_1 (.Pi(P[1]), .Gi(G[1]), .Pj(P[0]), .Gj(G[0]), .Pij(p1[1]), .Gij(g1[1]));
    box u1_2 (.Pi(P[2]), .Gi(G[2]), .Pj(P[1]), .Gj(G[1]), .Pij(p1[2]), .Gij(g1[2]));
    box u1_3 (.Pi(P[3]), .Gi(G[3]), .Pj(P[2]), .Gj(G[2]), .Pij(p1[3]), .Gij(g1[3]));
    box u1_4 (.Pi(P[4]), .Gi(G[4]), .Pj(P[3]), .Gj(G[3]), .Pij(p1[4]), .Gij(g1[4]));
    box u1_5 (.Pi(P[5]), .Gi(G[5]), .Pj(P[4]), .Gj(G[4]), .Pij(p1[5]), .Gij(g1[5]));
    box u1_6 (.Pi(P[6]), .Gi(G[6]), .Pj(P[5]), .Gj(G[5]), .Pij(p1[6]), .Gij(g1[6]));
    box u1_7 (.Pi(P[7]), .Gi(G[7]), .Pj(P[6]), .Gj(G[6]), .Pij(p1[7]), .Gij(g1[7]));
    box u1_8 (.Pi(P[8]), .Gi(G[8]), .Pj(P[7]), .Gj(G[7]), .Pij(p1[8]), .Gij(g1[8]));
    box u1_9 (.Pi(P[9]), .Gi(G[9]), .Pj(P[8]), .Gj(G[8]), .Pij(p1[9]), .Gij(g1[9]));
    box u1_10 (.Pi(P[10]), .Gi(G[10]), .Pj(P[9]), .Gj(G[9]), .Pij(p1[10]), .Gij(g1[10]));
    box u1_11 (.Pi(P[11]), .Gi(G[11]), .Pj(P[10]), .Gj(G[10]), .Pij(p1[11]), .Gij(g1[11]));
    box u1_12 (.Pi(P[12]), .Gi(G[12]), .Pj(P[11]), .Gj(G[11]), .Pij(p1[12]), .Gij(g1[12]));
    box u1_13 (.Pi(P[13]), .Gi(G[13]), .Pj(P[12]), .Gj(G[12]), .Pij(p1[13]), .Gij(g1[13]));
    box u1_14 (.Pi(P[14]), .Gi(G[14]), .Pj(P[13]), .Gj(G[13]), .Pij(p1[14]), .Gij(g1[14]));
    box u1_15 (.Pi(P[15]), .Gi(G[15]), .Pj(P[14]), .Gj(G[14]), .Pij(p1[15]), .Gij(g1[15]));

    // Second step
    buffer b2_0 (.Pi(p1[0]), .Gi(g1[0]), .Po(p2[0]), .Go(g2[0]));
    buffer b2_1 (.Pi(p1[1]), .Gi(g1[1]), .Po(p2[1]), .Go(g2[1]));
    box u2_2 (.Pi(p1[2]), .Gi(g1[2]), .Pj(p1[0]), .Gj(g1[0]), .Pij(p2[2]), .Gij(g2[2]));
    box u2_3 (.Pi(p1[3]), .Gi(g1[3]), .Pj(p1[1]), .Gj(g1[1]), .Pij(p2[3]), .Gij(g2[3]));
    box u2_4 (.Pi(p1[4]), .Gi(g1[4]), .Pj(p1[2]), .Gj(g1[2]), .Pij(p2[4]), .Gij(g2[4]));
    box u2_5 (.Pi(p1[5]), .Gi(g1[5]), .Pj(p1[3]), .Gj(g1[3]), .Pij(p2[5]), .Gij(g2[5]));
    box u2_6 (.Pi(p1[6]), .Gi(g1[6]), .Pj(p1[4]), .Gj(g1[4]), .Pij(p2[6]), .Gij(g2[6]));
    box u2_7 (.Pi(p1[7]), .Gi(g1[7]), .Pj(p1[5]), .Gj(g1[5]), .Pij(p2[7]), .Gij(g2[7]));
    box u2_8 (.Pi(p1[8]), .Gi(g1[8]), .Pj(p1[6]), .Gj(g1[6]), .Pij(p2[8]), .Gij(g2[8]));
    box u2_9 (.Pi(p1[9]), .Gi(g1[9]), .Pj(p1[7]), .Gj(g1[7]), .Pij(p2[9]), .Gij(g2[9]));
    box u2_10 (.Pi(p1[10]), .Gi(g1[10]), .Pj(p1[8]), .Gj(g1[8]), .Pij(p2[10]), .Gij(g2[10]));
    box u2_11 (.Pi(p1[11]), .Gi(g1[11]), .Pj(p1[9]), .Gj(g1[9]), .Pij(p2[11]), .Gij(g2[11]));
    box u2_12 (.Pi(p1[12]), .Gi(g1[12]), .Pj(p1[10]), .Gj(g1[10]), .Pij(p2[12]), .Gij(g2[12]));
    box u2_13 (.Pi(p1[13]), .Gi(g1[13]), .Pj(p1[11]), .Gj(g1[11]), .Pij(p2[13]), .Gij(g2[13]));
    box u2_14 (.Pi(p1[14]), .Gi(g1[14]), .Pj(p1[12]), .Gj(g1[12]), .Pij(p2[14]), .Gij(g2[14]));
    box u2_15 (.Pi(p1[15]), .Gi(g1[15]), .Pj(p1[13]), .Gj(g1[13]), .Pij(p2[15]), .Gij(g2[15]));

    // Third step
    buffer b3_0 (.Pi(p2[0]), .Gi(g2[0]), .Po(p3[0]), .Go(C[0]));
    buffer b3_1 (.Pi(p2[1]), .Gi(g2[1]), .Po(p3[1]), .Go(C[1]));
    buffer b3_2 (.Pi(p2[2]), .Gi(g2[2]), .Po(p3[2]), .Go(C[2]));
    buffer b3_3 (.Pi(p2[3]), .Gi(g2[3]), .Po(p3[3]), .Go(C[3]));
    box u3_4 (.Pi(p2[4]), .Gi(g2[4]), .Pj(p2[0]), .Gj(g2[0]), .Pij(p3[4]), .Gij(g3[4]));
    box u3_5 (.Pi(p2[5]), .Gi(g2[5]), .Pj(p2[1]), .Gj(g2[1]), .Pij(p3[5]), .Gij(g3[5]));
    box u3_6 (.Pi(p2[6]), .Gi(g2[6]), .Pj(p2[2]), .Gj(g2[2]), .Pij(p3[6]), .Gij(g3[6]));
    box u3_7 (.Pi(p2[7]), .Gi(g2[7]), .Pj(p2[3]), .Gj(g2[3]), .Pij(p3[7]), .Gij(g3[7]));
    box u3_8 (.Pi(p2[8]), .Gi(g2[8]), .Pj(p2[4]), .Gj(g2[4]), .Pij(p3[8]), .Gij(g3[8]));
    box u3_9 (.Pi(p2[9]), .Gi(g2[9]), .Pj(p2[5]), .Gj(g2[5]), .Pij(p3[9]), .Gij(g3[9]));
    box u3_10 (.Pi(p2[10]), .Gi(g2[10]), .Pj(p2[6]), .Gj(g2[6]), .Pij(p3[10]), .Gij(g3[10]));
    box u3_11 (.Pi(p2[11]), .Gi(g2[11]), .Pj(p2[7]), .Gj(g2[7]), .Pij(p3[11]), .Gij(g3[11]));
    box u3_12 (.Pi(p2[12]), .Gi(g2[12]), .Pj(p2[8]), .Gj(g2[8]), .Pij(p3[12]), .Gij(g3[12]));
    box u3_13 (.Pi(p2[13]), .Gi(g2[13]), .Pj(p2[9]), .Gj(g2[9]), .Pij(p3[13]), .Gij(g3[13]));
    box u3_14 (.Pi(p2[14]), .Gi(g2[14]), .Pj(p2[10]), .Gj(g2[10]), .Pij(p3[14]), .Gij(g3[14]));
    box u3_15 (.Pi(p2[15]), .Gi(g2[15]), .Pj(p2[11]), .Gj(g2[11]), .Pij(p3[15]), .Gij(g3[15]));

    assign C[4] = g3[4];
    assign C[5] = g3[5];
    assign C[6] = g3[6];
    assign C[7] = g3[7];

    // Fourth step
    box u4_8 (.Pi(p3[8]), .Gi(g3[8]), .Pj(p3[0]), .Gj(g3[0]), .Pij(trash), .Gij(C[8]));
    box u4_9 (.Pi(p3[9]), .Gi(g3[9]), .Pj(p3[1]), .Gj(g3[1]), .Pij(trash), .Gij(C[9]));
    box u4_10 (.Pi(p3[10]), .Gi(g3[10]), .Pj(p3[2]), .Gj(g3[2]), .Pij(trash), .Gij(C[10]));
    box u4_11 (.Pi(p3[11]), .Gi(g3[11]), .Pj(p3[3]), .Gj(g3[3]), .Pij(trash), .Gij(C[11]));
    box u4_12 (.Pi(p3[12]), .Gi(g3[12]), .Pj(p3[4]), .Gj(g3[4]), .Pij(trash), .Gij(C[12]));
    box u4_13 (.Pi(p3[13]), .Gi(g3[13]), .Pj(p3[5]), .Gj(g3[5]), .Pij(trash), .Gij(C[13]));
    box u4_14 (.Pi(p3[14]), .Gi(g3[14]), .Pj(p3[6]), .Gj(g3[6]), .Pij(trash), .Gij(C[14]));
    box u4_15 (.Pi(p3[15]), .Gi(g3[15]), .Pj(p3[7]), .Gj(g3[7]), .Pij(trash), .Gij(C[15]));

endmodule

// module testbench;
//     wire [15:0] a, b, result, answer;
//     wire [16:0] result16;
//     wire co;
//     integer i, j, k;

//     ppa adder (.A(a), .B(b), .CO(co), .S(result));
//     assign answer[15:0] = a[15:0]+b[15:0];
//     assign result16 = {co, result[15:0]};
//     assign a[15:0] = j[15:0];
//     assign b[15:0] = k[15:0];
//     initial begin
//         $monitor("%04b + %04b -> %05b (%d + %d = %d)", a, b, result16, a, b, result16);
//             for (i = 0; i<100; i++) begin
//                 j = $random;
//                 k = $random;
//                 #1;
//                 if (result != answer) $display("wrong answer!");
//             end
//         $finish;
//     end
// endmodule