local log = require("commitizen.logger")
local u = require("commitizen.utils")

---@class CommitizenAPI
local M = {}

M.create_commit = function()
  local commit_type = u.choose_commit_type()
  if commit_type == nil then
    log:debug("No commit type selected")
    return
  end
end

return M
