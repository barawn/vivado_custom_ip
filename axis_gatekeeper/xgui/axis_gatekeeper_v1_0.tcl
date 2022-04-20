# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_AXIS_DATA_BYTES [ipgui::add_param $IPINST -name "C_AXIS_DATA_BYTES" -parent ${Page_0}]
  set_property tooltip {Number of TDATA bytes} ${C_AXIS_DATA_BYTES}
  set C_AXIS_TUSER_WIDTH [ipgui::add_param $IPINST -name "C_AXIS_TUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of the TUSER field (or 0 if not used)} ${C_AXIS_TUSER_WIDTH}
  set C_AXIS_USE_TKEEP [ipgui::add_param $IPINST -name "C_AXIS_USE_TKEEP" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Use TKEEP in AXI4-Stream} ${C_AXIS_USE_TKEEP}
  set C_AXIS_USE_TLAST [ipgui::add_param $IPINST -name "C_AXIS_USE_TLAST" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Use TLAST. s_allow now counts number of frames allowed} ${C_AXIS_USE_TLAST}


}

proc update_PARAM_VALUE.C_AXIS_DATA_BYTES { PARAM_VALUE.C_AXIS_DATA_BYTES } {
	# Procedure called to update C_AXIS_DATA_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXIS_DATA_BYTES { PARAM_VALUE.C_AXIS_DATA_BYTES } {
	# Procedure called to validate C_AXIS_DATA_BYTES
	return true
}

proc update_PARAM_VALUE.C_AXIS_TUSER_WIDTH { PARAM_VALUE.C_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXIS_TUSER_WIDTH { PARAM_VALUE.C_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXIS_USE_TKEEP { PARAM_VALUE.C_AXIS_USE_TKEEP } {
	# Procedure called to update C_AXIS_USE_TKEEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXIS_USE_TKEEP { PARAM_VALUE.C_AXIS_USE_TKEEP } {
	# Procedure called to validate C_AXIS_USE_TKEEP
	return true
}

proc update_PARAM_VALUE.C_AXIS_USE_TLAST { PARAM_VALUE.C_AXIS_USE_TLAST } {
	# Procedure called to update C_AXIS_USE_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXIS_USE_TLAST { PARAM_VALUE.C_AXIS_USE_TLAST } {
	# Procedure called to validate C_AXIS_USE_TLAST
	return true
}


proc update_MODELPARAM_VALUE.C_AXIS_DATA_BYTES { MODELPARAM_VALUE.C_AXIS_DATA_BYTES PARAM_VALUE.C_AXIS_DATA_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXIS_DATA_BYTES}] ${MODELPARAM_VALUE.C_AXIS_DATA_BYTES}
}

proc update_MODELPARAM_VALUE.C_AXIS_USE_TKEEP { MODELPARAM_VALUE.C_AXIS_USE_TKEEP PARAM_VALUE.C_AXIS_USE_TKEEP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXIS_USE_TKEEP}] ${MODELPARAM_VALUE.C_AXIS_USE_TKEEP}
}

proc update_MODELPARAM_VALUE.C_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_AXIS_TUSER_WIDTH PARAM_VALUE.C_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXIS_USE_TLAST { MODELPARAM_VALUE.C_AXIS_USE_TLAST PARAM_VALUE.C_AXIS_USE_TLAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXIS_USE_TLAST}] ${MODELPARAM_VALUE.C_AXIS_USE_TLAST}
}

