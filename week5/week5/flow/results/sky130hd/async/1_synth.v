/* Generated by Yosys 0.13+15 (git sha1 bc027b2ca, gcc 9.4.0-1ubuntu1~20.04.1 -fPIC -Os) */

module async_updo(vdd, in2, out);
  wire Vout_ADC_in1;
  input in2;
  output out;
  input vdd;
  Ring_Osc_Analog RO (
    .Vout(Vout_ADC_in1)
  );
  one_Bit_ADC opampADC (
    .in1(Vout_ADC_in1),
    .in2(in2),
    .out(out),
    .vdd(vdd)
  );
endmodule
