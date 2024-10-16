`timescale 1ns/1ns

module comparator
(
input wire A,
input wire B,

output reg gt,
output reg eq,
output reg lt
);

always@*


if(A>B)
begin
gt=0;
eq=1;
lt=1;
end
else if(A==B)
begin
eq=0;
gt=1;
lt=1;
end
else if(A<B)
begin
eq=1;
gt=1;
lt=0;
end



endmodule