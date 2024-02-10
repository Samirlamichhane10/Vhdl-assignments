all: result.vcd

result.vcd: full_adder.vhdl adder_tb.vhdl 
	ghdl -a full_adder.vhdl
	ghdl -a adder_tb.vhdl
	ghdl -e adder_tb
	ghdl -r adder_tb --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd

