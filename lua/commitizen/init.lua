local api = require("commitizen.api")
local commands = require("commitizen.commands")
local config = require("commitizen.config")

---@class Commitizen
local M = {}

---@class Commitizen
---@field create_commit fun()
M.create_commit = function()
  api.create_commit()
end

---@class Commitizen
---@field setup fun(opts: CommitizenOptions|nil)
---Setup commitizen plugin
---@param opts? CommitizenOptions
M.setup = function(opts)
  config.setup(opts or {})
  commands.setup()
end

return M
