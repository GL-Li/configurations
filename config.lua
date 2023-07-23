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

-- enable clipboard to copy and paste in different lvim sessions
-- need $ sudo apt install xclip to install a third party clipboard
lvim.builtin.terminal.clipboard = true
