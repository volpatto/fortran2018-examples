logging_lib = library('logging', 'logging.f90')
append_exe = executable('test_logging', 'append_file.f90',
  link_with : logging_lib)

termio = executable('termio', 'terminal_io.f90')

leading_zeros = executable('leading_zeros', 'leading_zeros.f90')
test('LeadingZeros', leading_zeros)

expanduser = executable('expanduser', 'expanduser.f90')

notermsize = executable('notermsize', 'noenv.f90')
test('NoTermSize', notermsize)
if f18errorstop
  readonly = executable('readonly', 'fileopen-readonly.f90')
  test('ReadOnly', readonly)

  if not(os == 'windows' and fc.get_id() == 'pgi')
    null = executable('null', 'devnull.f90')
    test('Nullfile', null)
  endif
endif
