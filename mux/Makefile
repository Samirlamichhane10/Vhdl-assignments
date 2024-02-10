all: result.vcd

result.vcd: mux.vhdl mux_tb.vhdl
	ghdl -a mux.vhdl
	ghdl -a mux_tb.vhdl
	ghdl -e Multiplexer_Tf
	ghdl -r Multiplexer_Tf --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd 

