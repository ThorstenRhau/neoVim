return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
    cmd = { "MasonToolsInstall", "MasonToolsUpdate", "MasonToolsClean" },
    opts = {
        run_on_start = false,
        auto_update = false,
        ensure_installed = {
            "bashls",
            "black",
            "isort",
            "lua_ls",
            "markdownlint",
            "marksman",
            "prettier",
            "pylint",
            "pyright",
            "shellcheck",
            "shfmt",
            "stylua",
            "taplo",
        },
    },
}
