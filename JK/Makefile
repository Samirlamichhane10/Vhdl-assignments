all: result.vcd

result.vcd: jk.vhdl jk_tb.vhdl
	ghdl -a jk.vhdl
	ghdl -a jk_tb.vhdl
	ghdl -e JK_Flip_Flop_TB
	ghdl -r JK_Flip_Flop_TB --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd 


