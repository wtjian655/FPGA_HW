`timescale  1ns/1ns


module  tb_comparator();


//define input
reg    [0:0]   A;
reg    [0:0]   B;
//define output
wire    [0:0]   gt;
wire    [0:0]   eq;
wire    [0:0]   lt;


//Initialize
initial begin
    A <= 1'b0;
    B <= 1'b0;
    
end


always #10 A <= {$random} % 2;


always #10 B <= {$random} % 2;



initial begin
    $timeformat(-9, 0, "ns", 6);
    $monitor("@time %t: A=%b B=%b gt=%b eq=%b lt=%b", $time, A, B, gt, eq, lt);
end


//------------- comparator_inst -------------
comparator  comparator_inst(
    .A    (A),  //input             in
    .B    (B),  //input             ena
    .gt   (gt),   //output            out
	 .eq   (eq),
	 .lt   (lt)
);

endmodule
