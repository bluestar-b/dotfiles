

call plug#begin()




Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'

Plug 'prisma/vim-prisma'
Plug 'wakatime/vim-wakatime'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

Plug 'rust-lang/rust.vim'

" post install (yarn install | npm install) then load plugin only for editing supported files
call plug#end()
colorscheme moonfly
