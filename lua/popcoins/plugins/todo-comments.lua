
-- TODO: Config futher if needed. 


return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    keywords = {
    FIX = {
      icon = " ", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    },
    gui_style = {
	fg = "BOLD",
	bg = "BOLD",
    },

    vim.keymap.set("n", "]t", function()
	    require("todo-comments").jump_next()
    end, { desc = "Next todo comment" }),

    vim.keymap.set("n", "[t", function()
	    require("todo-comments").jump_prev()
    end, { desc = "Previous todo comment" }),

    vim.keymap.set("n", "<leader>td", "<CMD>Trouble todo<CR>"),

  }
}
-- NOTE can use TODO, NOTE, FIX, HACK, WARNING, PERF

