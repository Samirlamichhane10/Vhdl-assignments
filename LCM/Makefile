all: result.vcd

result.vcd: lcm.vhdl LCM_TB.vhdl
	ghdl -a lcm.vhdl
	ghdl -a LCM_TB.vhdl
	ghdl -e lcm_fsm_tb
	ghdl -r lcm_fsm_tb --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd 

