return{
    {
        "Mofiqul/dracula.nvim",
        config = function()
            vim.cmd[[colorscheme dracula]]
        end
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        event = "VeryLazy",
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
            {"<leader>t", ":Neotree toggle<CR>", silent = true },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
         dependencies = { 'nvim-tree/nvim-web-devicons' },
         opts = {
             options =  {
                 theme =  "dracula"
             }
          },
    },
    {
        -- 系统环境要装ripgrep&fd
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        keys = {
            {"<leader>ff", ":Telescope find_files<CR>", silent = true},
            {"<leader>fg", ":Telescope live_grep<CR>", silent = true},
            {"<leader>fb", ":Telescope buffers<CR>", silent = true},
            {"<leader>fh", ":Telescope help_tags<CR>", silent = true},
            {"<leader>fg", ":Telescope git_status<CR>", silent = true},
        }
    }
}
