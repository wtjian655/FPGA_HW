`timescale  1ns/1ns


module  full_adder
(
    input   wire    in1 ,   
    input   wire    in2 ,   
    input   wire    cin ,   

    output  wire    sum ,   
    output  wire    cout    
);


//wire  define
wire    h0_sum;     
wire    h0_cout;    
wire    h1_cout;    

//********************************************************************//
//**************************** Instantiate ***************************//
//********************************************************************//
//------------- half_adder_inst0 --------------
half_adder  half_adder_inst0
(                       
    .in1    (in1    ),  //input     in1       
    .in2    (in2    ),  //input     in2

    .sum    (h0_sum ),  //ouptut    sum
    .cout   (h0_cout)   //output    cout
);

//------------- half_adder_inst0 --------------
half_adder  half_adder_inst1
(                       
    .in1    (h0_sum ),  //input     in1
    .in2    (cin    ),  //input     in2

    .sum    (sum    ),  //ouptut    sum
    .cout   (h1_cout)   //output    cout
);


assign  cout = h0_cout | h1_cout;

endmodule
