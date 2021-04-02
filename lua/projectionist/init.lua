vim.api.nvim_set_var('projectionist_heuristics', {
  ['*.go'] = {
    ['*.go'] = {
      ['alternate'] = '{}_test.go',
      ['type'] = 'source',
    },
    ['*_test.go'] = {
      ['alternate'] = '{}.go',
      ['type'] = 'test',
    },
  },
  ['*.py'] = {
    ['*.py'] = {
      ['alternate'] = '{}_test.py',
      ['type'] = 'source',
    },
    ['*_test.py'] = {
      ['alternate'] = '{}.py',
      ['type'] = 'test',
    },
  },
  ['*.c|*.h|*.cpp|*.hpp'] = {
    ['*.c'] = {['alternate'] = {'{}.h'}},
    ['*.cpp'] = {['alternate'] = {'{}.h', '{}.hpp'}},
    ['*.h'] = {['alternate'] = {'{}.cpp', '{}.c'}},
    ['*.hpp'] = {['alternate'] = '{}.cpp'},
  },
  ['*.java'] = {
    ['src/main/java/*.java'] = {
      ['type'] = 'source',
      ['alternate'] = 'src/test/java/{}.java',
    },
    ['src/test/java/*.java'] = {
      ['type'] = 'test',
      ['alternate'] = 'src/test/java/{}.java',
    }
  },
  ['*.sql'] = {
    ['*.up.sql'] = {
      ['alternate'] = '*.down.sql',
      ['type'] = 'source'
    },
    ['*.down.sql'] = {
      ['alternate'] = '*.up.sql',
      ['type'] = 'test'
    },
  },
})

