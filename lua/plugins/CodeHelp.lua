return{
    {
        -- 运行代码
        "CRAG666/code_runner.nvim",
        cmd = { "RunCode", "RunFile", "RunProject", "RunClose", "CRFiletype", "CRProjects" },
        opts = {
            filetype = {
                python = function ()
                    if  vim.fn.has("unix") == 1 then
                        return "python3 -u"
                    end
                    return "python"
                end
            },
        },
     },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "InsertEnter",
        config = function ()
           require('nvim-treesitter').install { 'lua', 'python'}

        end
    },
    {
          -- LSP 自动化(下载,配置,启用) 
         "mason-org/mason-lspconfig.nvim",
          dependencies = {
                { "mason-org/mason.nvim", opts = {} },
                "neovim/nvim-lspconfig",
          },
          opts = {
            ensure_installed = {"lua_ls","clangd","pyright"}
          },
          event = "VeryLazy",
    },
    {
         -- 自动补全引擎
         'saghen/blink.cmp',
          dependencies = {
              'rafamadriz/friendly-snippets',
              {"echasnovski/mini.pairs", opts = {} } -- 括号自动补全
          },
          version = '1.*',
          opts = {
            keymap = { preset = 'super-tab' },
            appearance = {
                nerd_font_variant = 'mono'
            },

            completion = { documentation = { auto_show = true } },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            cmdline = {
                sources = function()
                    local cmd_type = vim.fn.getcmdtype()
                    if cmd_type == "/" then
                        return { "buffer" }
                    end
                    if cmd_type == ":" then
                        return { "cmdline" }
                    end
                end,
                keymap = {
                    preset = "super-tab"
                },
                completion = { menu = { auto_show = true}}
            },
          },
          event = { "InsertEnter", "CmdlineEnter"}
    },
}
