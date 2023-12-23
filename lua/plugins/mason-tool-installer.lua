return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    cmd = { "MasonToolsInstall", "MasonToolsUpdate", "MasonToolsClean" },
    opts = {
        ensure_installed = {
            "bashls",
            "black",
            "isort",
            "jedi_language_server",
            "lua_ls",
            "markdownlint",
            "marksman",
            "prettier",
            "pylint",
            "shellcheck",
            "shfmt",
            "stylua",
            "taplo",
            run_on_start = true,
            auto_update = false,
        },
    },
}
