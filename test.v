module test;

reg rst, clk;
wire [7:0]data;

counter counter_inst (
    .CLK(clk),
    .RST(rst),
    .DATA(data)
);

always
    #10 clk = ~clk;

initial begin
    clk = 1'b0;
    rst = 1'b0;
end

initial begin
    #50 rst = 1'b1;
    #30 rst = 1'b0;
end

initial begin
    #400 $finish;
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, test);
end

endmodule
