local keymap = vim.keymap

vim.g.mapleader = " " -- 主键



-- 分屏
keymap.set({"n","i"},"<leader>vs","<Cmd>vsplit<CR>",{ silent = true })
keymap.set({"n","i"},"<leader>hs","<Cmd>split<CR>",{ silent = true })

keymap.set("n","<Esc><Esc>",":noh<CR>",{ silent = true})


