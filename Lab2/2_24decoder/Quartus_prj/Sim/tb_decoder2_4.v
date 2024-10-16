`timescale  1ns/1ns


module  tb_decoder2_4();


//define input
reg    [1:0]   in;
reg    [0:0]   ena;
//define output
wire    [3:0]   out;



//Initialize
initial begin
    in <= 1'b0;
    ena <= 1'b0;
    
end


always #10 in <= {$random} % 2;


always #10 ena <= {$random} % 2;



initial begin
    $timeformat(-9, 0, "ns", 6);
    $monitor("@time %t: in=%b ena=%b out=%b", $time, in, ena, out);
end


//------------- decoder2_4_inst -------------
decoder2_4  decoder2_4_inst(
    .in     (in),  //input             in
    .ena    (ena),  //input             ena
    .out    (out)   //output            out
);

endmodule
