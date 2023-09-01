return {
  {
    "ducng99/neovim-session-manager",
    lazy = false,
    config = function()
      require("session_manager").setup({
        autoload_mode = require("session_manager.config").AutoloadMode.CurrentDirOrLastSession,
      })
    end,
  },
}
