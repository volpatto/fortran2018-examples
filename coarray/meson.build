coarray = dependency('coarray', required : false)

if not (fc.run('sync all; end', dependencies: coarray, name:'Coarray runs').returncode() == 0)
  coarray = disabler()
endif

# this needs to be "run" to verify no dll runtime issues, particularly on Windows.
f18coarray = fc.run('real :: x[*]; call co_sum(x); sync all; end', dependencies: coarray, name: 'F2018 coarray').returncode() == 0

hello = executable('coarray_hello', 'helloworld.f90',
  dependencies : coarray)
test('Coarray Hello', hello, timeout: 20, is_parallel : false)


# Intel >= 20 supports Fortran 2018 co_sum
if f18coarray
  pi = executable('coarray_pi', 'pi.f90', dependencies : coarray)
else
  pi = executable('coarray_pi', 'pi2008.f90', dependencies : coarray)
endif

test('Coarray Pi', pi, timeout: 20, is_parallel : false)
