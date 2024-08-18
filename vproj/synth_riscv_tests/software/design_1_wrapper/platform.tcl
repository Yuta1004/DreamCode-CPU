# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/software/design_1_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/software/design_1_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {/home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/hardware/design_1_wrapper.xsa}\
-out {/home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/software}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {/home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/hardware/design_1_wrapper.xsa}
platform generate -domains 
