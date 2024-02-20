all: result.vcd

result.vcd: lcm.vhdl LCM_TB.vhdl
	ghdl -a lcm.vhdl
	ghdl -a LCM_TB.vhdl
	ghdl -e LCM_TB
	ghdl -r LCM_TB --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd 

