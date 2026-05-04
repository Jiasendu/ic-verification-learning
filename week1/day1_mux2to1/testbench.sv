// Testbench for 2-to-1 MUX
module tb;

    // 1. 声明信号 (testbench 里给 DUT 喂的输入用 reg, 接的输出用 wire)
    reg  a, b, sel;
    wire y;

    // 2. 实例化 DUT (把我们写的 mux2to1 放进测试环境)
    mux2to1 dut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    // 3. 测试激励 (initial 块: 仿真开始时执行一次)
    initial begin
        $display("Time | sel a b | y | expected");
        $display("------------------------------");

        // 测试 1: sel=0, 应该输出 a=0
        a=0; b=1; sel=0; #10;
        $display("%4t |  %b  %b %b | %b |    0", $time, sel, a, b, y);

        // 测试 2: sel=0, a=1, 应该输出 1
        a=1; b=0; sel=0; #10;
        $display("%4t |  %b  %b %b | %b |    1", $time, sel, a, b, y);

        // 测试 3: sel=1, 应该输出 b=0
        a=1; b=0; sel=1; #10;
        $display("%4t |  %b  %b %b | %b |    0", $time, sel, a, b, y);

        // 测试 4: sel=1, b=1, 应该输出 1
        a=0; b=1; sel=1; #10;
        $display("%4t |  %b  %b %b | %b |    1", $time, sel, a, b, y);

        $display("------------------------------");
        $display("Simulation done.");
        $finish;
    end

endmodule
