// 2-to-1 Multiplexer
// 当 sel=0 时, y=a
// 当 sel=1 时, y=b

module mux2to1 (
    input  wire a,        // 输入 a
    input  wire b,        // 输入 b
    input  wire sel,      // 选择信号
    output wire y         // 输出
);

    // TODO: 在这里写一行代码,实现 MUX 的逻辑
    // 提示:用三目运算符 ?: 
    // 语法: assign 输出 = 条件 ? 值1 : 值2;
    assign y = sel ? b : a;

endmodule
