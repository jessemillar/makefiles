# Tell make that the below are phony targets instead of filenames (so we can always run the target even if there's a file named `clean`, for example)
.PHONY: all say_hello generate clean

all: say_hello generate

say_hello:
	@echo "Hello World"

generate:
	@echo "Creating empty text files..."
		for number in 1 2 3 4 5 6 7 8 9 10; do \
			touch file-$$number.txt ; \
		done

clean:
	@echo "Cleaning up..."
	rm *.txt
