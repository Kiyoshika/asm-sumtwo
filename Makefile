all:
	gcc -no-pie -fsanitize=address sumtwo.s -o sumtwo
