func Test_bad_command()
  new
  call assert_fails(':zzz', 'E492')
  bwipeout!
endfun
