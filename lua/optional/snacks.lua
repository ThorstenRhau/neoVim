---@module "lazy"
---@type LazySpec
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@module 'snacks'
    ---@type snacks.Config
    opts = {
        animate = {
            enabled = true,
            duration = 20, -- ms per step
            easing = "linear",
            fps = 60, -- frames per second. Global setting for all animations
        },
        bigfile = {
            size = 1 * 1024 * 1024, -- 1 MB
            notify = true,
        },
        dashboard = {
            row = nil, -- dashboard position. nil for center
            col = nil, -- dashboard position. nil for center
            preset = {
                header = [[neovim :: by Thorsten]],
            },
            formats = {
                header = { "%s", align = "center" },
                text = { "%s", align = "center" },
            },
            sections = {
                {
                    section = "header",
                },
            },
        },
        git = { enabled = true },
        gitbrowse = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = {
            height = { min = 1, max = 0.5 },
            padding = true,
            sort = { "added" }, -- sort only by time
            style = "compact",
            timeout = 6000,
            top_down = true,
            width = { min = 12, max = 0.3 },
        },
        picker = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scratch = { enabled = false },
        scroll = {
            enabled = true,
            animate = {
                duration = { step = 10, total = 150 },
                easing = "linear",
            },
            spamming = 10,
        },
        statuscolumn = { enabled = true },
        styles = {
            notification = {
                border = vim.g.borderStyle,
                wo = { winblend = 0, wrap = true },
                relative = nil,
            },
            blame_line = {
                width = 0.6,
                height = 0.6,
                border = vim.g.borderStyle,
                title = " 󰉚 Git blame ",
                relative = nil,
            },
        },
        terminal = {
            enabled = false,
        },
        toggle = { enabled = true },
    },

    keys = {
        -- stylua: ignore start
        { "<leader>z",  function() Snacks.zen() end,                     desc = "Toggle Zen Mode" },
        { "<leader>Z",  function() Snacks.zen.zoom() end,                desc = "Toggle Zoom" },
        { "<leader>n",  function() Snacks.notifier.show_history() end,   desc = "Notification History" },
        { "<leader>bd", function() Snacks.bufdelete() end,               desc = "Delete Buffer" },
        { "<leader>cR", function() Snacks.rename.rename_file() end,      desc = "Rename File" },
        { "<leader>gw", function() Snacks.gitbrowse() end,               desc = "Git Browse Web" },
        { "<leader>gb", function() Snacks.git.blame_line() end,          desc = "Git Blame Line" },
        { "<leader>gf", function() Snacks.lazygit.log_file() end,        desc = "Lazygit Current File History" },
        { "<leader>gl", function() Snacks.lazygit() end,                 desc = "Lazygit" },
        { "<leader>gL", function() Snacks.lazygit.log() end,             desc = "Lazygit Log (cwd)" },
        { "<leader>un", function() Snacks.notifier.hide() end,           desc = "Dismiss All Notifications" },
        { "]]",         function() Snacks.words.jump(vim.v.count1) end,  desc = "Next Reference",              mode = { "n", "t" } },
        { "[[",         function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference",              mode = { "n", "t" } },
        --
        -- Snacks.picker
        --
        { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
        { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
        { "<leader><space>", function() Snacks.picker.files() end, desc = "Find Files" },
        -- find
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
        { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
        -- git
        { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
        { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
        -- Grep
        { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
        { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
        { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
        { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
        -- search
        { '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers" },
        { "<leader>sa", function() Snacks.picker.autocmds() end, desc = "Autocmds" },
        { "<leader>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
        { "<leader>sC", function() Snacks.picker.commands() end, desc = "Commands" },
        { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
        { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
        { "<leader>sH", function() Snacks.picker.highlights() end, desc = "Highlights" },
        { "<leader>sj", function() Snacks.picker.jumps() end, desc = "Jumps" },
        { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
        { "<leader>sl", function() Snacks.picker.loclist() end, desc = "Location List" },
        { "<leader>sM", function() Snacks.picker.man() end, desc = "Man Pages" },
        { "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },
        { "<leader>sR", function() Snacks.picker.resume() end, desc = "Resume" },
        { "<leader>sq", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
        { "<leader>uX", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
        { "<leader>qp", function() Snacks.picker.projects() end, desc = "Projects" },
        -- LSP
        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
        { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
        { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
        { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
        -- stylua: ignore end
    },

    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                -- Create some toggle mappings
                Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
                Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
                Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
                Snacks.toggle.diagnostics():map("<leader>ud")
                Snacks.toggle.line_number():map("<leader>ul")
                Snacks.toggle
                    .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
                    :map("<leader>uc")
                Snacks.toggle.treesitter():map("<leader>uT")
                Snacks.toggle
                    .option("background", { off = "light", on = "dark", name = "Dark Background" })
                    :map("<leader>ub")
                Snacks.toggle.inlay_hints():map("<leader>uh")
                Snacks.toggle.indent():map("<leader>ug")
                Snacks.toggle.dim():map("<leader>uD")
            end,
        })
    end,
}
