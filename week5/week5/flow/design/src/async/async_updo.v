module async_updo
(
input wire vdd,
input wire in2,
output wire out
);
wire Vout_ADC_in1;
Ring_Osc_Analog RO(.Vout(Vout_ADC_in1));
one_Bit_ADC opampADC(.in1(Vout_ADC_in1),
                     .in2(in2),
                     .vdd(vdd),
                     .out(out));
endmodule
