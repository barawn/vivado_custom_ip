# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_NUM_PWM" -parent ${Page_0}
  set C_PWM_WIDTH [ipgui::add_param $IPINST -name "C_PWM_WIDTH" -parent ${Page_0}]
  set_property tooltip {PWM output width} ${C_PWM_WIDTH}


}

proc update_PARAM_VALUE.C_NUM_PWM { PARAM_VALUE.C_NUM_PWM } {
	# Procedure called to update C_NUM_PWM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_PWM { PARAM_VALUE.C_NUM_PWM } {
	# Procedure called to validate C_NUM_PWM
	return true
}

proc update_PARAM_VALUE.C_PWM_WIDTH { PARAM_VALUE.C_PWM_WIDTH } {
	# Procedure called to update C_PWM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PWM_WIDTH { PARAM_VALUE.C_PWM_WIDTH } {
	# Procedure called to validate C_PWM_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_NUM_PWM { MODELPARAM_VALUE.C_NUM_PWM PARAM_VALUE.C_NUM_PWM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_PWM}] ${MODELPARAM_VALUE.C_NUM_PWM}
}

proc update_MODELPARAM_VALUE.C_PWM_WIDTH { MODELPARAM_VALUE.C_PWM_WIDTH PARAM_VALUE.C_PWM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PWM_WIDTH}] ${MODELPARAM_VALUE.C_PWM_WIDTH}
}

