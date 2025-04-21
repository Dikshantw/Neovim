return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        palettes = {
          -- Custom carbonfox with black background
          carbonfox = {
            bg1 = "#000000", -- Black background
            bg0 = "#1d1d2b", -- Alt backgrounds (floats, statusline, ...)
            bg3 = "#121820", -- 55% darkened from stock
          },
        },
        specs = {
          all = {
            inactive = "bg0", -- Default value for other styles
          },
          carbonfox = {
            inactive = "#090909", -- Slightly lighter then black background
          },
        },
        groups = {
          all = {
            NormalNC = { fg = "fg1", bg = "inactive" }, -- Non-current windows
          },
        },
      })
      vim.cmd.colorscheme("carbonfox")
    end,
  },
}
