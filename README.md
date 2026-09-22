# vim-rounder

A simple Vim plugin to round floating-point numbers under the cursor in-place, to any specified decimal precision.

# Installation

Clone vim rounder into your Vim runtime directory:

```bash
git clone https://github.com/aamidd/vim-rounder.git ~/.vim/pack/plugins/start/vim-rounder
```

I won't force a keybinding on you, but this is my recommendation. Just add it to your `.vimrc` file:

```vim
nnoremap <leader>r :<C-u> call RoundNumber(v:count)<CR>
```

`<leader>` is the backslash (`\`) character by default. So you can type `3\r` to round `3.1415926` to `3.142`.
