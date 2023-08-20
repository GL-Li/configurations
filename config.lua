-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- R plugins
lvim.plugins = {
    {"alaviss/nim.nvim"},
    {"jalvesaq/Nvim-R"},

  -- chatGPT
  {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        -- api_key_cmd = "cat $HOME/.api-keys/chatgpt.txt"
        -- api_key = "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"
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }
}

-- default settings
-- lvim.leader = "space"   -- leader key

-- auto format on save
lvim.format_on_save = true

-- enable clipboard to copy and paste in different lvim sessions
-- need $ sudo apt install xclip to install a third party clipboard
lvim.builtin.terminal.clipboard = true

-- soft wrap text
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.breakindentopt = "shift:2"


-- general key mappings
lvim.builtin.terminal.open_mapping = "<c-t>" -- from https://www.lunarvim.org/docs/configuration/keybindings

-- language specific settings =================================================

-- R: turn off Nvim-R underscore to <- conversion
vim.g.R_assign = 0

-- Rust: key mapping
lvim.keys.normal_mode["<C-x>"] = ":RustRun<CR>"

