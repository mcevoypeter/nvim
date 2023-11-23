-- color scheme
vim.cmd("colorscheme default")

-- tab settings
vim.cmd([[
  set autoindent
  set expandtab
  set shiftwidth=2
  set smartindent
  set tabstop=2
]])

-- Enable intuitive backspace behavior in insert mode.
vim.cmd("set backspace=indent,eol,start")

-- Always show status line.
vim.cmd("set laststatus=2")

-- split window settings
vim.cmd([[
  set splitbelow
  set splitright
]])

-- search settings
vim.cmd([[
  set hlsearch
  set incsearch
  " Enable case-insensitive search when all letters are lowercase and
  " case-sensitive search when some letters are uppercase.
  set ignorecase smartcase
  " Display search count message.
  set shortmess-=S
]])
