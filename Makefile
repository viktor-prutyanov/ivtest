all: vvp

test: counter.v test.v
	iverilog $^ -o test

vvp: test
	vvp test

clean:
	rm test
