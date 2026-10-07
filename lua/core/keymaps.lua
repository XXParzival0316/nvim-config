local keymap = vim.keymap

--主键
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- 分屏
keymap.set({"n"},"<leader>vs","<Cmd>vsplit<CR>",{ silent = true })
keymap.set({"n"},"<leader>hs","<Cmd>split<CR>",{ silent = true })

keymap.set("n","gd",":lua vim.lsp.buf.definition()<CR>",{ silent = true })
keymap.set("n","<Esc><Esc>",":noh<CR>",{ silent = true}) -- 取消搜索高亮

