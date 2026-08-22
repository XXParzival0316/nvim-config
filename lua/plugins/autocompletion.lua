return{
    {
        -- LSP 自动化(下载,配置,启用) 
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {"lua_ls"}
        },
    },
}
