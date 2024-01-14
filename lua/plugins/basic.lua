-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add gruvbox
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>r"] = { name = "+run command" },
      },
    },
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    keys = {
      {"<tab>1", "<cmd>1ToggleTerm<CR>", mode = {"n", "t"}, desc = "Toggle terminal 1" },
      {"<tab>2", "<cmd>2ToggleTerm<CR>", mode = {"n", "t"}, desc = "Toggle terminal 2" },
      {"<tab>3", "<cmd>3ToggleTerm<CR>", mode = {"n", "t"}, desc = "Toggle terminal 3" },
      {"<tab>4", "<cmd>4ToggleTerm<CR>", mode = {"n", "t"}, desc = "Toggle terminal 4" },

      {"<leader>r1", "<cmd>ToggleTermSendCurrentLine 1<CR>", mode = "n", desc = "current line to terminal 1" },
      {"<leader>r2", "<cmd>ToggleTermSendCurrentLine 2<CR>", mode = "n", desc = "current line to terminal 2" },
      {"<leader>r3", "<cmd>ToggleTermSendCurrentLine 3<CR>", mode = "n", desc = "current line to terminal 3" },
      {"<leader>r4", "<cmd>ToggleTermSendCurrentLine 4<CR>", mode = "n", desc = "current line to terminal 4" },

      {"<leader>r1", "<cmd>ToggleTermSendVisualLines 1<CR>V", mode = "v", desc = "selected lines to terminal 1" },
      {"<leader>r2", "<cmd>ToggleTermSendVisualLines 2<CR>V", mode = "v", desc = "selected lines to terminal 2" },
      {"<leader>r3", "<cmd>ToggleTermSendVisualLines 3<CR>V", mode = "v", desc = "selected lines to terminal 3" },
      {"<leader>r4", "<cmd>ToggleTermSendVisualLines 4<CR>V", mode = "v", desc = "selected lines to terminal 4" },
    },
    opts = {
      size = 20,
      direction = "horizontal",
      winbar = {
        enabled = true,
      }
    },
  },
}
