#!/bin/bash

if ! command -v nvim &>/dev/null; then
  yay -S --noconfirm --needed nvim luarocks tree-sitter-cli

  # Install LazyVim
  rm -rf ~/.config/nvim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  cp -R ~/.local/share/omarchy/config/nvim/* ~/.config/nvim/
  rm -rf ~/.config/nvim/.git
  echo "vim.opt.relativenumber = false" >>~/.config/nvim/lua/config/options.lua

  cat >>~/.config/nvim/lua/config/keymaps.lua <<EOF
local set = vim.keymap.set
local k = vim.keycode

set("i", "jk", "<ESC>")
set("t", "jk", "<c-\\><c-n>")

-- Toggle hlsearch if it's on, otherwise just do "enter"
set("n", "<CR>", function()
  ---@diagnostic disable-next-line: undefined-field
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ""
  else
    return k("<CR>")
  end
end, { expr = true })
EOF
fi
