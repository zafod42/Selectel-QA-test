func Test_exiting()
  let after =<< trim [CODE]
    quit
  [CODE]
    
  call assert_true(RunVim([], after, ''))
endfun
