local config = require("commitizen.config")

---@class Commitizen
local M = {}

---@class Commitizen
---@field setup fun(opts: CommitizenOptions|nil)
---Setup commitizen plugin
---@param opts? CommitizenOptions
M.setup = function(opts)
  config.setup(opts or {})
end

return M
