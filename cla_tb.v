module cla_tb();
reg[3:0]a,b;
reg cin;
wire[3:0]s;
wire cout;

cla shiva(a,b,cin,s,cout);
initial begin
$monitor("$time=%0t|a=%d|b=%0d|cin=%0d|s=%0d|cout=%0d",$time,a,b,cin,s,cout);
repeat(5)begin
a=$urandom;
b=$urandom;
cin=$urandom;
#5;
end
end
endmodule
