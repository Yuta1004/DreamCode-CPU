# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "S_CS_FINISH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_CS_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_CS_SEND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_CS_WAIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_CTL_IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_CTL_WRITE" -parent ${Page_0}


}

proc update_PARAM_VALUE.S_CS_FINISH { PARAM_VALUE.S_CS_FINISH } {
	# Procedure called to update S_CS_FINISH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_CS_FINISH { PARAM_VALUE.S_CS_FINISH } {
	# Procedure called to validate S_CS_FINISH
	return true
}

proc update_PARAM_VALUE.S_CS_IDLE { PARAM_VALUE.S_CS_IDLE } {
	# Procedure called to update S_CS_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_CS_IDLE { PARAM_VALUE.S_CS_IDLE } {
	# Procedure called to validate S_CS_IDLE
	return true
}

proc update_PARAM_VALUE.S_CS_SEND { PARAM_VALUE.S_CS_SEND } {
	# Procedure called to update S_CS_SEND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_CS_SEND { PARAM_VALUE.S_CS_SEND } {
	# Procedure called to validate S_CS_SEND
	return true
}

proc update_PARAM_VALUE.S_CS_WAIT { PARAM_VALUE.S_CS_WAIT } {
	# Procedure called to update S_CS_WAIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_CS_WAIT { PARAM_VALUE.S_CS_WAIT } {
	# Procedure called to validate S_CS_WAIT
	return true
}

proc update_PARAM_VALUE.S_CTL_IDLE { PARAM_VALUE.S_CTL_IDLE } {
	# Procedure called to update S_CTL_IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_CTL_IDLE { PARAM_VALUE.S_CTL_IDLE } {
	# Procedure called to validate S_CTL_IDLE
	return true
}

proc update_PARAM_VALUE.S_CTL_WRITE { PARAM_VALUE.S_CTL_WRITE } {
	# Procedure called to update S_CTL_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_CTL_WRITE { PARAM_VALUE.S_CTL_WRITE } {
	# Procedure called to validate S_CTL_WRITE
	return true
}


proc update_MODELPARAM_VALUE.S_CTL_IDLE { MODELPARAM_VALUE.S_CTL_IDLE PARAM_VALUE.S_CTL_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_CTL_IDLE}] ${MODELPARAM_VALUE.S_CTL_IDLE}
}

proc update_MODELPARAM_VALUE.S_CTL_WRITE { MODELPARAM_VALUE.S_CTL_WRITE PARAM_VALUE.S_CTL_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_CTL_WRITE}] ${MODELPARAM_VALUE.S_CTL_WRITE}
}

proc update_MODELPARAM_VALUE.S_CS_IDLE { MODELPARAM_VALUE.S_CS_IDLE PARAM_VALUE.S_CS_IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_CS_IDLE}] ${MODELPARAM_VALUE.S_CS_IDLE}
}

proc update_MODELPARAM_VALUE.S_CS_SEND { MODELPARAM_VALUE.S_CS_SEND PARAM_VALUE.S_CS_SEND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_CS_SEND}] ${MODELPARAM_VALUE.S_CS_SEND}
}

proc update_MODELPARAM_VALUE.S_CS_WAIT { MODELPARAM_VALUE.S_CS_WAIT PARAM_VALUE.S_CS_WAIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_CS_WAIT}] ${MODELPARAM_VALUE.S_CS_WAIT}
}

proc update_MODELPARAM_VALUE.S_CS_FINISH { MODELPARAM_VALUE.S_CS_FINISH PARAM_VALUE.S_CS_FINISH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_CS_FINISH}] ${MODELPARAM_VALUE.S_CS_FINISH}
}

