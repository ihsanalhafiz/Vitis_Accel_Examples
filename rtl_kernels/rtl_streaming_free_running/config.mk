VIVADO := $(XILINX_VIVADO)/bin/vivado
$(TEMP_DIR)/myadder1.xo: 
	mkdir -p $(TEMP_DIR)
	$(VIVADO) -mode batch -source ./src/gen_xo.tcl -tclargs $(TEMP_DIR)/myadder1.xo myadder1 $(TARGET) $(B_NAME)/$(XSA).xpfm $(XSA)
