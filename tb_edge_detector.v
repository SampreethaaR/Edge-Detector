module tb_edge_detector();
reg clk;
wire rising,falling;
edge_detector dut (.clk(clk),.rising(rising),.falling(falling));
initial
begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
#100;
$stop;
end
endmodule