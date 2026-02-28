all: test

test:
	vim -u NONE -S runtest.vim src/test_input.vim
	vim -u NONE -S runtest.vim src/test_negative.vim
	vim -u NONE -S runtest.vim src/test_storage.vim
	vim -u NONE -S runtest.vim src/test_exit.vim
	cat starttime | date
	cat messages

clean:
	rm -f messages test.log starttime
