VERILOG = iverilog
TARGET = LFSR.vcd

$(TARGET) : LFSR.vvp
	vvp LFSR.vvp

LFSR.vvp: LFSR_tb.v LFSR.v
	$(VERILOG) -o LFSR.vvp LFSR_tb.v LFSR.v

clean:
	del $(TARGET)