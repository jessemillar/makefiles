.DEFAULT_GOAL := generate

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
