all: result.vcd

result.vcd: Half_adder.vhdl full_adder_component.vhdl full_adder_HA_TB.vhdl
	ghdl -a Half_adder.vhdl
	ghdl -a full_adder_component.vhdl
	ghdl -a full_adder_HA_TB.vhdl 
	ghdl -e FAdder_TB
	ghdl -r FAdder_TB --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd 


