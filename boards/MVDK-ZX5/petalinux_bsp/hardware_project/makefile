overlay_name := mvdkZX5
design_name := mvdkZX5

all: bit
	@echo
	@tput setaf 2 ; echo "Built $(overlay_name) successfully!"; tput sgr0;
	@echo

bit:
	vivado -mode batch -source \
	$(overlay_name).tcl build_bitstream.tcl -notrace

clean:
	rm -rf $(overlay_name) *.jou *.log
	rm -rf NA .Xil
