local M = {}

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

---Prompt user to choose a commit type
---@return CommitType|nil
M.choose_commit_type = function()
  local commit_types = M.commit_types
  local cm_types = {}
  ---@type CommitType|nil
  for i, commit_type in ipairs(commit_types) do
    cm_types[i] = string.format("%d: %s", i, commit_type)
  end
  local commit_type = vim.fn.inputlist(cm_types)
  if commit_type == 0 then
    return nil
  end
  return vim.trim(commit_types[commit_type]:gsub("^%d+: ", ""))
end

return M
