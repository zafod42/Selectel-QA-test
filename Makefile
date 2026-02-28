all: test

test:
	vim -u NONE -S runtest.vim src/test_test.vim
	cat starttime | date
	cat messages

clean:
	rm -f messages test.log starttime
