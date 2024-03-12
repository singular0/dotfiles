return {

  n = {
    ['<D-c>'] = { '"*yy', noremap = true, silent = true },
    ['<D-v>'] = { '"*p',  noremap = true, silent = true },
    ['<D-x>'] = { '"*dd', noremap = true, silent = true },
  },

  i = {
    ['<D-v>'] = { '<C-R>*', noremap = true, silent = true },
  },

  v = {
    ['<D-c>'] = { '"*y', noremap = true, silent = true },
    ['<D-v>'] = { '"*P', noremap = true, silent = true },
    ['<D-x>'] = { '"*d', noremap = true, silent = true },
  },

  t = {
    ['<D-v>'] = { '<C-\\><C-n>', noremap = true, silent = true },
    ['<Esc>'] = { '<C-\\><C-n>', noremap = true, silent = true }, -- Toggle terminal to normal mode with Esc
  },

}
