func Test_insert_characters_in_line()
  new
  call cursor(1, 1)
  normal! iSome string
  call assert_equal("Some string", getline(1))
  bwipeout!
endfun

func Test_delete_one_char()
  new
  call setline(1, ['Some string'])
  call cursor(1, 1)
  normal! ex
  call assert_equal("Som string", getline(1))
  bwipeout!
endfunc

func Test_delete_two_char()
  new
  call setline(1, ['Some string'])
  call cursor(1, 1)
  normal! exx
  call assert_equal("Somstring", getline(1))
  bwipeout!
endfun

func Test_delete_line()
  new
  call setline(1, ['Some string'])
  call cursor(1, 1)
  normal! dd
  call assert_equal("", getline(1))
  bwipeout!
endfun
