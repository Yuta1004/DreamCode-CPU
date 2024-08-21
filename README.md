# DreamCode CPU

## Setup

### Sim

```
$ git clone git@github.com:Yuta1004/DreamCode-CPU.git
$ git submodule update --init --recursive
$ make setup
```

### Synth

...

## Dirs

- [ip/cpu](ip/cpu) : RISC-V CPU (rv32i) IP
- [ip/cpu_monitor](ip/cpu_monitor) : CPUモニタ用IP
- [ip/seg7](ip/seg7) : 7セグLED制御用IP
- [vproj/sim](vproj/sim) : シミュレーション用Vivadoプロジェクト
- [vproj/synth_riscv_tests](vproj/synth_riscv_tests) : 合成用Vivadoプロジェクト
