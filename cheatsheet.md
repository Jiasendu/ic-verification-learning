# Verilog/SystemVerilog 速查表

## 模块基本结构
\`\`\`verilog
module 模块名 (input  wire a, b,
              output wire y);
    assign y = a & b;     // 组合逻辑用 assign
endmodule
\`\`\`

## 数据类型
| 类型 | 用途 |
|---|---|
| `wire` | 线,组合逻辑,不能存值 |
| `reg`  | 寄存器,时序逻辑,能存值 |
| `logic` | SV 新类型,可代替 wire/reg |

## 运算符
| 符号 | 含义 | 例子 |
|---|---|---|
| `&` | 按位与 | `a & b` |
| `\|` | 按位或 | `a \| b` |
| `~` | 按位非 | `~a` |
| `^` | 按位异或 | `a ^ b` |
| `?:` | 三目选择 | `s ? a : b` |
| `=`  | 阻塞赋值,组合逻辑用 | `assign y = a` |
| `<=` | 非阻塞赋值,时序逻辑用 | `q <= d` |

## 时序逻辑模板
\`\`\`verilog
always @(posedge clk or posedge reset) begin
  if (reset) q <= 1'b0;     // 异步复位
  else       q <= d;        // 时钟上升沿赋值
end
\`\`\`

## 角色分工
- `design.sv` = DUT(被测设计),设计工程师的活
- `testbench.sv` = 测试环境,验证工程师的活
- 验证铁律:**DUT 不会说自己错,testbench 必须主动判对错**
