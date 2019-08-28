# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_static_text $IPINST -name "description" -parent ${Page_0} -text {The serial_axis_bridge acts as a multiplexer/demultiplexer for the streams necessary to use the AXI S2MM portion of the AXI Memory Mapped-to-Stream interface.}
  #Adding Group
  set Baud_rate [ipgui::add_group $IPINST -name "Baud rate" -parent ${Page_0}]
  set_property tooltip {Baud rate generation} ${Baud_rate}
  ipgui::add_static_text $IPINST -name "baud rate generator description" -parent ${Baud_rate} -text {The baud rate generator is an NCO with an accumulator of variable width and a value to be added each cycle.

The maximum value of the accumulator divided by the addend should be the divider to generate a 16x baud rate clock enable.

Settings below are for 100 MHz and a 115,200 baud rate.}
  ipgui::add_param $IPINST -name "C_BAUD_RATE_NBITS" -parent ${Baud_rate}
  ipgui::add_param $IPINST -name "C_BAUD_RATE_ADDEND" -parent ${Baud_rate}

  #Adding Group
  set AXI-MM_Configuration [ipgui::add_group $IPINST -name "AXI-MM Configuration" -parent ${Page_0}]
  set_property tooltip {AXI-MM Configuration} ${AXI-MM_Configuration}
  ipgui::add_param $IPINST -name "C_ADDR_BYTES" -parent ${AXI-MM_Configuration}
  ipgui::add_param $IPINST -name "C_DATA_BYTES" -parent ${AXI-MM_Configuration}

  #Adding Group
  set Debug [ipgui::add_group $IPINST -name "Debug" -parent ${Page_0} -display_name {Debugging}]
  set_property tooltip {Debugging} ${Debug}
  ipgui::add_param $IPINST -name "C_DEBUG" -parent ${Debug} -widget comboBox



}

proc update_PARAM_VALUE.C_ADDR_BYTES { PARAM_VALUE.C_ADDR_BYTES } {
	# Procedure called to update C_ADDR_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_ADDR_BYTES { PARAM_VALUE.C_ADDR_BYTES } {
	# Procedure called to validate C_ADDR_BYTES
	return true
}

proc update_PARAM_VALUE.C_BAUD_RATE_ADDEND { PARAM_VALUE.C_BAUD_RATE_ADDEND } {
	# Procedure called to update C_BAUD_RATE_ADDEND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BAUD_RATE_ADDEND { PARAM_VALUE.C_BAUD_RATE_ADDEND } {
	# Procedure called to validate C_BAUD_RATE_ADDEND
	return true
}

proc update_PARAM_VALUE.C_BAUD_RATE_NBITS { PARAM_VALUE.C_BAUD_RATE_NBITS } {
	# Procedure called to update C_BAUD_RATE_NBITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BAUD_RATE_NBITS { PARAM_VALUE.C_BAUD_RATE_NBITS } {
	# Procedure called to validate C_BAUD_RATE_NBITS
	return true
}

proc update_PARAM_VALUE.C_DATA_BYTES { PARAM_VALUE.C_DATA_BYTES } {
	# Procedure called to update C_DATA_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_BYTES { PARAM_VALUE.C_DATA_BYTES } {
	# Procedure called to validate C_DATA_BYTES
	return true
}

proc update_PARAM_VALUE.C_DEBUG { PARAM_VALUE.C_DEBUG } {
	# Procedure called to update C_DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DEBUG { PARAM_VALUE.C_DEBUG } {
	# Procedure called to validate C_DEBUG
	return true
}


proc update_MODELPARAM_VALUE.C_ADDR_BYTES { MODELPARAM_VALUE.C_ADDR_BYTES PARAM_VALUE.C_ADDR_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_ADDR_BYTES}] ${MODELPARAM_VALUE.C_ADDR_BYTES}
}

proc update_MODELPARAM_VALUE.C_DATA_BYTES { MODELPARAM_VALUE.C_DATA_BYTES PARAM_VALUE.C_DATA_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_BYTES}] ${MODELPARAM_VALUE.C_DATA_BYTES}
}

proc update_MODELPARAM_VALUE.C_BAUD_RATE_NBITS { MODELPARAM_VALUE.C_BAUD_RATE_NBITS PARAM_VALUE.C_BAUD_RATE_NBITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BAUD_RATE_NBITS}] ${MODELPARAM_VALUE.C_BAUD_RATE_NBITS}
}

proc update_MODELPARAM_VALUE.C_BAUD_RATE_ADDEND { MODELPARAM_VALUE.C_BAUD_RATE_ADDEND PARAM_VALUE.C_BAUD_RATE_ADDEND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BAUD_RATE_ADDEND}] ${MODELPARAM_VALUE.C_BAUD_RATE_ADDEND}
}

proc update_MODELPARAM_VALUE.C_DEBUG { MODELPARAM_VALUE.C_DEBUG PARAM_VALUE.C_DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DEBUG}] ${MODELPARAM_VALUE.C_DEBUG}
}

