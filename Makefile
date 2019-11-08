# The program used as the shell is taken from the variable `SHELL'
# If this variable is not set in your Makefile, the program `/bin/sh' is used as the shell
# sh is better for portability
SHELL = bash

# Tell make that the below targets are phony targets instead of filenames (so we can always run the target even if there's a file named `clean`, for example)
.PHONY: all say_hello generate clean

# The first target in a Makefile is the default target
# It's common practice to have `all` as the default and configure it to call "all" relevant targets
all: say_hello generate

say_hello:
	@echo "Hello World"

generate:
	@echo "Creating empty text files..."
	touch file-{1..10}.txt

clean:
	@echo "Cleaning up..."
	rm *.txt
