return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        enabled = true,
        priority = 1000,
        lazy = false,
        opts = {
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = {
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false,
            show_end_of_buffer = false,
            term_colors = false,
            dim_inactive = {
                enabled = true,
                shade = "dark",
                percentage = 0.10,
            },
            no_italic = false,
            no_bold = false,
            no_underline = false,
            styles = {
                comments = { "italic" },
                conditionals = {},
                loops = {},
                constants = { "bold" },
                functions = { "bold, italic" },
                keywords = { "italic" },
                strings = {},
                variables = { "bold" },
                numbers = {},
                booleans = {},
                properties = {},
                types = { "bold" },
                operators = {},
            },
            color_overrides = {
                all = {},
                latte = {},
                frappe = {},
                macchiato = {},
                mocha = {},
            },
            custom_highlights = {},
            integrations = {
                aerial = true,
                barbecue = {
                    dim_dirname = true,
                    bold_basename = true,
                    dim_context = false,
                    alt_background = false,
                },
                cmp = true,
                diffview = true,
                gitsigns = true,
                illuminate = {
                    enabled = true,
                    lsp = true,
                },
                indent_blankline = {
                    enabled = true,
                    colored_indent_levels = false,
                },
                lsp_trouble = true,
                markdown = true,
                mason = true,
                mini = {
                    enabled = true,
                },
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "underdotted" },
                        warnings = { "underline" },
                        information = { "underdashed" },
                    },
                    inlay_hints = {
                        background = true,
                    },
                },
                neogit = true,
                neotree = true,
                noice = true,
                notify = true,
                pounce = true,
                render_markdown = true,
                semantic_tokens = true,
                symbols_outline = true,
                telescope = {
                    enabled = true,
                },
                treesitter = true,
                treesitter_context = true,
                which_key = true,
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        },
    },
}
