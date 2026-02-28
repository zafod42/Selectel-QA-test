func Test_save_and_read_file()
  call writefile(['somestring'], 'Xtestout')
  call assert_equal(['somestring'], readfile('Xtestout'))
  call delete('Xtestout')
endfun
