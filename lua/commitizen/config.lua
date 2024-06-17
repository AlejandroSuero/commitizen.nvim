---@type CommitizenOptions
local default_config = {
  confirm_before_commit = true,
}

---@class CommitizenConfig
---@field config CommitizenOptions
---@field setup fun(opts: CommitizenOptions|nil)
local M = {
  config = vim.deepcopy(default_config),
}

M.setup = function(opts)
  local config = vim.tbl_deep_extend("force", {}, vim.deepcopy(default_config), opts or {})
  M.config = config
end

return setmetatable(M, {
  __index = function(_, key)
    if key == "setup" then
      return M.setup
    end
    return rawget(M.config, key)
  end,
})
