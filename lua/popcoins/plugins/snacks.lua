-- lazy.nvim
return {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            scroll = { enabled = true }, 
            picker = { enabled = true },
        },
        keys = {
            -- Pickers & Explorers
            { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
            { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
            { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
            { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
            { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
            
            -- GREP
            { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
            { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
            { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
            { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
            
            { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
            { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit logs" },
            { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
            { "<leader>rN", function() Snacks.rename.rename_file() end, desc = "Rename File" },
            { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
            --{ "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
            { "<leader>/",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
              { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
        }

}
