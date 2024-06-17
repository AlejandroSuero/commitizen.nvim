local config = require("commitizen.config")
local log = require("commitizen.logger")

local M = {
  commit_msg = "",
  commit_type = "",
  commit_body = "",
}

---List of commit types
---@type string<CommitType>
M.commit_types = {
  "feat",
  "fix",
  "docs",
  "style",
  "refactor",
  "perf",
  "test",
  "ci",
  "chore",
}

M.get_commit_types = function()
  if config.config.extra_types == nil then
    return M.commit_types
  end
  return vim.list_extend(M.commit_types, config.config.extra_types)
end

---Prompt user to choose a commit type
---@return CommitType|nil
M.choose_commit_type = function()
  local commit_types = vim.list_extend(M.get_commit_types(), { "Other" })
  local cm_types = {}
  ---@type CommitType|nil
  for i, commit_type in ipairs(commit_types) do
    cm_types[i] = string.format("%d: %s", i, commit_type)
  end
  local commit_type = vim.fn.inputlist(cm_types)
  if commit_type == 0 or commit_type == #commit_types then
    return nil
  end
  return vim.trim(commit_types[commit_type]:gsub("^%d+: ", ""))
end

return M
