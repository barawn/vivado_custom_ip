# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_ADDRESS_WIDTH" -parent ${Page_0}
  set C_BASE_ADDRESS [ipgui::add_param $IPINST -name "C_BASE_ADDRESS" -parent ${Page_0}]
  set_property tooltip {8-bit base address of the AXI bridge. Must be aligned on 32-byte boundary.} ${C_BASE_ADDRESS}
  ipgui::add_param $IPINST -name "C_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_ADDRESS_WIDTH { PARAM_VALUE.C_ADDRESS_WIDTH } {
	# Procedure called to update C_ADDRESS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADDRESS_WIDTH { PARAM_VALUE.C_ADDRESS_WIDTH } {
	# Procedure called to validate C_ADDRESS_WIDTH
	return true
}

proc update_PARAM_VALUE.C_BASE_ADDRESS { PARAM_VALUE.C_BASE_ADDRESS } {
	# Procedure called to update C_BASE_ADDRESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BASE_ADDRESS { PARAM_VALUE.C_BASE_ADDRESS } {
	# Procedure called to validate C_BASE_ADDRESS
	return true
}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_ADDRESS_WIDTH { MODELPARAM_VALUE.C_ADDRESS_WIDTH PARAM_VALUE.C_ADDRESS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADDRESS_WIDTH}] ${MODELPARAM_VALUE.C_ADDRESS_WIDTH}
}

proc update_MODELPARAM_VALUE.C_DATA_WIDTH { MODELPARAM_VALUE.C_DATA_WIDTH PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_WIDTH}] ${MODELPARAM_VALUE.C_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_BASE_ADDRESS { MODELPARAM_VALUE.C_BASE_ADDRESS PARAM_VALUE.C_BASE_ADDRESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BASE_ADDRESS}] ${MODELPARAM_VALUE.C_BASE_ADDRESS}
}

