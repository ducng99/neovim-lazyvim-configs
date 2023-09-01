return {
  {
    "ducng99/neovim-session-manager",
    lazy = false,
    config = function()
      local session_manager = require("session_manager")
      local config = require("session_manager.config")
      session_manager.setup({
        autoload_mode = config.AutoloadMode.CurrentDirOrLastSession,
      })
    end,
  },
}
