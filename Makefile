SV_FILES := $(shell find . -type f -name '*.sv')

build:
	@iverilog -g2012 -Wall $(SV_FILES) -o cpu

run: build
	@./cpu

clean:
	@rm -rf cpu
