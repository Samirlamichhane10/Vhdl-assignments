all: result.vcd

result.vcd: seq_det.vhdl seq_det_tb.vhdl 
	ghdl -a seq_det.vhdl
	ghdl -a seq_det_tb.vhdl
	ghdl -e Sequence_Detector_Testbench
	ghdl -r Sequence_Detector_Testbench --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd

