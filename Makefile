#Directories
VERILOGPATH= /home/pro/hattrick/aghosh/hattrick_thesydekick/Entities/interpolator/chisel/halfband_interpolator/verilog
SCALAPATH= /home/pro/hattrick/aghosh/hattrick_thesydekick/Entities/interpolator/chisel/halfband_interpolator/src/main/scala
#DEPDIR :=.depdir
#$(shell mkdir -p $(DEPDIR) >/dev/null)
$(shell mkdir -p $(VERILOGPATH) >/dev/null)
MODULES= halfband_interpolator

TARGETS = $(foreach name,$(MODULES), $(VERILOGPATH)/$(name).v)
#Commands
SBT=sbt -J-Xmx16G -J-Xss8M
FIRRTL=java -Xmx16G -Xss8M -cp /home/pro/hattrick/aghosh/hattrick_thesydekick/Entities/interpolator/chisel/halfband_interpolator/rocket-chip/firrtl/utils/bin/firrtl.jar firrtl.Driver

TOUCH=touch -r
vpath %.scala $(SCALAPATH)/halfband_BW_01125_N_6
vpath %.scala $(SCALAPATH)/halfband_BW_0225_N_8
vpath %.scala $(SCALAPATH)/halfband_BW_045_N_40
vpath %.scala $(SCALAPATH)/halfband_interpolator
.PHONY: all help clean $(MODULES)


all: $(TARGETS)

#Generate recipes for individual modules
halfband_interpolator: $(VERILOGPATH)/halfband_interpolator.v

#Template for conditional makes
#Figure out the naming conventions later. Package is lowercase, class equals main method
#Does not track dependencies from scala source
$(VERILOGPATH)/%.v : %.scala  
	$(eval package:=$(basename $(notdir $@)))
	$(eval class:=$(basename $(notdir $@)))
	$(eval testbenchfile:=$(dir $<)tb_$(notdir $<))
	$(SBT) 'run-main $(package).$(class) -td $(VERILOGPATH)' 
	@#Test if testbech generator exists and compile it
	@if [ -f $(testbenchfile) ]; then \
		$(SBT) 'run-main $(package).tb_$(class) -td $(VERILOGPATH)'; \
	fi
clean:
	rm -f $(VERILOGPATH)/*.v
	rm -f $(VERILOGPATH)/*.anno
	rm -f $(VERILOGPATH)/*.fir
	rm -rf $(VERILOGPATH)
	#rm -rf $(DEPDIR)

#MMOD ?=
#memmap:
#	cp $(VERILOGPATH)/$(MMOD).v  $(VERILOGPATH)/$(MMOD)_unmapped.orig.v
#	$(FIRRTL) -td ./verilog -tn $(MMOD) -i  $(VERILOGPATH)/$(MMOD).fir \
#    -o $(VERILOGPATH)/$(MMOD).v -X verilog  \
#    --infer-rw $(MMOD) --repl-seq-mem -c:$(MMOD):-o:$(VERILOGPATH)/$(MMOD).conf

#Generate cleanup recipes for individual modules
.PHONY: clean_halfband_interpolator
clean_halfband_interpolator:
	rm -f $(VERILOGPATH)/halfband_interpolator.v
	rm -f $(VERILOGPATH)/halfband_interpolator.anno
	rm -f $(VERILOGPATH)/halfband_interpolator.fir
	rm -f $(VERILOGPATH)/halfband_interpolator_memmapped.conf
	rm -f $(VERILOGPATH)/halfband_interpolator_memmapped.v

help:
	@echo "configured modules are:";
	@for i in $(MODULES) ; do \
	   echo $$i; \
	done
