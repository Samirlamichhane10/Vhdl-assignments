all: result.vcd

result.vcd: GCD.vhdl GCD_Testbench.vhdl
	ghdl -a GCD.vhdl
	ghdl -a GCD_Testbench.vhdl
	ghdl -e GCD_TB
	ghdl -r GCD_TB --vcd=result.vcd --stop-time=10us
clean:
	rm -rf result.vcd


