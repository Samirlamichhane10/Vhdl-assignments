all: result.vcd

result.vcd: mux41.vhdl MUX41_tb.vhdl
	ghdl -a mux41.vhdl
	ghdl -a MUX41_tb.vhdl
	ghdl -e MUX41_tb
	ghdl -r MUX41_tb --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd 

