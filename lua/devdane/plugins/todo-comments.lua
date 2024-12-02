return {
  "folke/todo-comments.nvim",
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local todo_comments = require("todo-comments")
    
    local keymap = vim.keymap

    keymap.set('n', '<leader>]t', function()
      todo_comments.jump_next()
    end, { desc = "Jump to next todo" })

    keymap.set('n', '<leader>[t', function()
      todo_comments.jump_prev()
    end, { desc = "Jump to previous todo" })

    todo_comments.setup()
  end,
}
