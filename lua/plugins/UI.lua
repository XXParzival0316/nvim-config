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
    },
    {
         "nvim-neo-tree/neo-tree.nvim",
         branch = "v3.x",
         dependencies = {
          "nvim-tree/nvim-web-devicons",
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
        },
        keys = {
            {"<leader>to",":Neotree show<CR>", silent = true },
            {"<leader>tc",":Neotree close<CR>", silent = true },
            {"<leader>tg",":Neotree git_status<CR>", silent = true },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
         event = "ColorScheme",
         dependencies = { 'nvim-tree/nvim-web-devicons' },
         opts = {
             options =  {
                 theme =  "dracula"
             }
          },
         },
}
