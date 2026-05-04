# IC Verification Learning Plan

> 8-week intensive study plan before NTU-TUM IC Design Master program.
> This document tracks my full learning roadmap, background, and progress.
> 中文学习规划与背景档案,持续更新进度。

---

## 📑 Table of Contents

- [Personal Background](#-personal-background)
- [Time Budget](#-time-budget)
- [8-Week Roadmap](#-8-week-roadmap)
  - [Week 1-2: Verilog & Digital Refresh](#week-1-2-verilog--digital-refresh)
  - [Week 3-5: SystemVerilog](#week-3-5-systemverilog)
  - [Week 6-7: UVM](#week-6-7-uvm)
  - [Week 8: Capstone Project & Job Prep](#week-8-capstone-project--job-prep)
- [Auxiliary Tracks](#-auxiliary-tracks)
- [Pitfalls to Avoid](#-pitfalls-to-avoid)
- [Year-2 Internship Timeline](#-year-2-internship-timeline)
- [Profile Details](#-profile-details)
- [Progress Log](#-progress-log)

---

## 👤 Personal Background

**Education**
- 本科:通信工程
- 相关课程:数字电路、模拟电路(基础水平)
- Verilog:本科有接触,几乎零基础
- SystemVerilog / UVM:未学习
- 编程:C 可读懂,Python 简单可读懂
- Linux:仅基础命令行,复杂操作靠查资料/AI

**Master Program**
- NTU × TUM Asia 联合 IC Design 硕士(新加坡)
- 学制:2 年,暑假后入学

**Career Goal**
- 短期(硕士第二年):新加坡 IC 验证方向实习
- 长期:IC Verification Engineer
- 目标公司:Mediatek, Marvell, Broadcom, Infineon, AMD/Xilinx, Synopsys, Cadence, GlobalFoundries 等

**Resources**
- 📘 《SystemVerilog 验证》—— Chris Spear(绿皮书)
- 📘 《UVM 实战》—— 张强(白皮书)
- 🎥 B站:戚廿七(UVM 进阶+实战、UVM 实战、DC)
- 🛠️ EDA Playground(在线 SV/UVM 仿真)

---

## ⏱ Time Budget

- 总时长:约 8 周(2 个月,入学前)
- 日均:2–3 小时有效学习,周末可加量
- 强度:动手优先,不只看视频

---

## 🗺 8-Week Roadmap

### Core Principles

1. **动手优先** —— 所有概念必须在 EDA Playground 跑通,不只看不写
2. **项目导向** —— 第 8 周必须产出可放简历/GitHub 的项目
3. **验证思维** —— 训练"如何验证"而非"如何设计"的视角
4. **工具同步** —— Linux / vim / Git / Python 与硬件知识并行

---

### Week 1-2: Verilog & Digital Refresh

**目标:** 流畅读懂中等复杂度 RTL,独立写出常见数字模块

**Knowledge Points**
- 组合逻辑、时序逻辑、阻塞 vs 非阻塞赋值
- FSM:Moore 与 Mealy
- 流水线与数据冒险处理
- 同步/异步复位、跨时钟域(CDC)基础概念
- Verilog 可综合子集 vs 仿真子集

**Practice (EDA Playground)**
- [x] 2-to-1 MUX(Day 1 ✅)
- [ ] 4 位行波加法器、超前进位加法器
- [ ] 移位寄存器(SISO/SIPO/PISO/PIPO)
- [ ] 简单 FSM(序列检测器 1011)
- [ ] 同步 FIFO 与异步 FIFO
- [ ] 简易 UART 收发模块
- [ ] Round-robin 仲裁器

**Tools (穿插进行)**
- [ ] Linux 常用命令:cd / ls / grep / find / sed / awk
- [ ] vim 基本操作(能改代码即可)
- [x] Git 基本操作:init / add / commit / push(已会用网页版)
- [x] GitHub 仓库建立(Day 1 ✅)

---

### Week 3-5: SystemVerilog

**目标:** 不依赖模板,独立搭建一个不使用 UVM 的简单分层 testbench

#### Week 3 — 数据类型与接口

- [ ] `logic`, `bit`, `byte`, `int` 等新数据类型
- [ ] packed/unpacked array, dynamic array, queue, associative array
- [ ] struct, union, typedef, enum
- [ ] string 类型与操作
- [ ] **interface 与 virtual interface**(重点!)
- [ ] modport, clocking block

#### Week 4 — 面向对象 + 随机化

- [ ] class, object, handle(通信背景同学的难点)
- [ ] 继承、多态、virtual function/method
- [ ] this, super, extends
- [ ] 参数化 class
- [ ] randomize(), rand vs randc
- [ ] constraint 语法、约束求解
- [ ] pre_randomize / post_randomize

#### Week 4末–Week 5 — 高级特性

- [ ] 进程:fork-join / fork-join_any / fork-join_none
- [ ] 进程同步:mailbox, semaphore, event
- [ ] 功能覆盖率:covergroup, coverpoint, bins, cross
- [ ] SVA 断言:immediate / concurrent assertion 基础

#### Week 5 末实战项目

- [ ] **不使用 UVM**,自己搭分层 testbench 验证 FIFO 或简单 ALU
  包含:generator → driver → DUT → monitor → scoreboard
  并收集功能覆盖率

---

### Week 6-7: UVM

**目标:** 从零搭建完整 UVM 验证环境

#### Week 6 — UVM 基础架构

- [ ] 为什么用 UVM(对比手写 TB)
- [ ] uvm_component vs uvm_object 的区别与使用场景
- [ ] UVM Phase 机制(build / connect / run / report)
- [ ] factory:create, type_override, instance_override
- [ ] TLM 通信:port / export / imp, analysis_port
- [ ] uvm_sequence_item, uvm_sequence, uvm_sequencer 协作
- [ ] driver 与 sequencer 的握手(get_next_item, item_done)

#### Week 7 — UVM 进阶

- [ ] config_db:set/get,作用域与优先级
- [ ] uvm_env, uvm_agent, uvm_test 的组织
- [ ] virtual sequence 与 virtual sequencer
- [ ] **Register Model (RAL)**:reg, reg_block, reg_map, frontdoor/backdoor
- [ ] 覆盖率收集与 coverage closure 策略
- [ ] UVM message 机制与 debug 技巧

**学习方法**
- 看完一章白皮书,关掉书自己默写关键代码
- 不要直接复制例子,理解后重写
- 每个新概念都在 EDA Playground UVM template 上验证

---

### Week 8: Capstone Project & Job Prep

**目标:** 产出 GitHub 项目 + 英文简历初稿

**Project Options(任选,难度递增)**
- [ ] A. 用 UVM 验证 APB 或 AHB-Lite 的 master/slave
- [ ] B. 验证开源 RISC-V 单周期处理器
- [ ] C. 给 OpenCores 上某 IP 补完整 UVM testbench

**Deliverables**
- [ ] 完整 UVM 验证环境代码
- [ ] 英文 README(DUT 功能、验证架构、testcase 列表、覆盖率结果、发现的 bug)
- [ ] Verification Plan 简版文档
- [ ] 上传至 GitHub

**Job Materials**
- [ ] 英文简历初稿(突出项目与技术栈)
- [ ] LinkedIn 资料完善
- [ ] 英文自我介绍话术(NTU career fair 用)

---

## 🧰 Auxiliary Tracks

### Scripting (Week 3 起,每周 2-3 小时)
- [ ] Python 基础:文件 IO、正则、字符串处理
- [ ] 能写脚本:处理仿真 log、生成 testcase list、批量跑 regression、解析 coverage 报告
- [ ] Shell 与 Makefile 基础

### Protocols (Week 6 起穿插)
- [ ] AMBA 协议:APB(最简单先学)→ AHB → AXI
- [ ] 至少深入理解 APB 与 AXI4
- [ ] 参考:ARM 官方文档(简化版)

### English Tech Communication (每周 1-2 小时)
- [ ] 阅读:Verification Academy / ChipVerify / Doulos
- [ ] 积累验证术语英文:testbench, coverage, assertion, constraint, sequence, scoreboard, regression…
- [ ] 用英文描述自己项目的话术准备

---

## ⚠️ Pitfalls to Avoid

- ❌ 不要学 Specman/e(已过时)
- ❌ 不要在 OVM/VMM 上花时间,直接学 UVM
- ❌ 找实习阶段不需要 formal verification 与 low power(UPF)
- ❌ 不要只看视频不动手,SV/UVM 必须写代码才记得住
- ❌ 不要追求把白皮书看完,理解 + 能复现关键模式更重要

---

## 📅 Year-2 Internship Timeline

| 阶段 | 时间 | 任务 |
|---|---|---|
| 入学第一年 | Year 1 | 选修验证相关课程(NTU 有 VLSI Testing 等) |
| 第一年寒假 | Year 1 Winter | 完善项目,刷 leetcode(C++/Python,easy–medium) |
| 入学后 10–12 个月 | Year 2 开学前后 | 投递新加坡 IC 公司 summer/full-time 实习 |
| 全程 | 持续 | 参加 NTU career fair、校友 networking、英文面试准备 |

**目标公司:** Mediatek / Marvell / Broadcom / Infineon / AMD-Xilinx / Synopsys / Cadence / GlobalFoundries

---

## 📝 Profile Details

| 维度 | 现状 |
|---|---|
| Verilog 熟练度 | 几乎 0 基础,不会手写 FSM |
| 编程语言 | C 可读懂,Python 简单可读懂 |
| Linux | 仅基础命令行 |
| 每日学习时长 | 2–3 小时 |
| IC 细分方向偏好 | 待确认(关注薪资、就业、抗 AI 替代) |

---

## 📊 Progress Log

### Status Legend
- ✅ Done
- 🔄 In Progress
- ⏸ Blocked
- ⬜ Not Started

---

### Week 1 (May 4 – May 10, 2026)

#### Day 1 — May 4, 2026 ✅

**学习时长:** 2 小时

**Completed**
- ✅ 注册 EDA Playground 账号 + 配置 Riviera Pro 仿真器
- ✅ 创建 GitHub 学习仓库
- ✅ 跑通官方示例(D flip-flop),理解 design/testbench 分工
- ✅ 写出第一个 Verilog 模块:2-to-1 MUX
- ✅ Testbench 4 个用例全部通过
- ✅ 代码上传 GitHub:[`week1/day1_mux2to1`](./week1/day1_mux2to1/)
- ✅ 建立 Verilog/SV 速查表:[`cheatsheet.md`](./cheatsheet.md)

**Concepts Learned**
- module / endmodule 模块结构
- input / output / wire / reg 端口与数据类型
- assign 连续赋值(组合逻辑)
- 三目运算符 `?:` 实现选择逻辑
- testbench 中 initial 块与 $display 用法
- **验证核心思想:DUT 不会自己说错,testbench 必须主动判断**

**Issues**
- Counter 例子在 Examples 列表未找到,改用 D flip-flop 替代(等效)
- Markdown 嵌套代码块转义问题(已解决)

**Next**
- Day 2: 数字电路基础复习 + 4 位行波加法器

---

#### Day 2 — TBD ⬜

---

## 🔗 Quick Links

- [Cheatsheet (Verilog/SV speed-reference)](./cheatsheet.md)
- [Day 1 Project: 2-to-1 MUX](./week1/day1_mux2to1/)

---

*Last updated: 2026-05-04*
