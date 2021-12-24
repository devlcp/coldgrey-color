![Coldgrey header image](coldgrey.jpeg)

Colorscheme made with love.

### Requirements

* Neovim >= 0.6.0
* [Lush.nvim](https://github.com/rktjmp/lush.nvim)

### Installation
```vim
" vim-plug
Plug 'rktjmp/lush.nvim'
Plug 'devlcp/coldgrey-color'
```

```lua
-- packer.nvim
use {
    'devlcp/coldgrey-color',
    requires = {{ "rktjmp/lush.nvim", opt = true }}
}
```

### Usage
```vim 
" vim settings
colorscheme coldgrey
```
```lua
-- lua settings
vim.cmd('colorscheme coldgrey')
```

