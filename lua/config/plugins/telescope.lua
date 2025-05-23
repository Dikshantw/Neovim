return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        picker = {},
        extensions = {
          fzf = {},
        },
      })
      require("telescope").load_extension("fzf")
      vim.keymap.set("n", "<space>fd", require("telescope.builtin").find_files)
      vim.keymap.set("n", "<space>vh", require("telescope.builtin").help_tags)
      vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, {})
      vim.keymap.set("n", "<space>en", function()
        require("telescope.builtin").find_files({
          cwd = vim.fn.stdpath("config"),
        })
      end)
      vim.keymap.set("n", "<leader><leader>", require("telescope.builtin").oldfiles)
      require("config.telescope.multigrep").setup()
    end,
  },
}
