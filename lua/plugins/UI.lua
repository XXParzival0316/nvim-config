return{
    {
        "Mofiqul/dracula.nvim",
        config = function()
            vim.cmd[[colorscheme dracula]]
        end,
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        opts = {},
        keys = {
            {"<leader>h", ":BufferLineCyclePrev<CR>", silent = true },
            {"<leader>l", ":BufferLineCycleNext<CR>", silent = true },
            {"<leader>p", ":BufferLinePick<CR>", silent = true },
            {"<leader>c", ":BufferLinePickClose<CR>", silent = true },
        }
    }
    
}
