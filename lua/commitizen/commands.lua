local api = require("commitizen.api")

local M = {}

M.setup = function()
  vim.api.nvim_create_user_command("Commitizen", function()
    api.create_commit()
  end, {})
end

return M
