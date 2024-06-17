---@class CommitizenOptions
---@field confirm_before_commit? boolean: whether to ask for confirmation before committing.
---@field extra_types? string[]: extra types to be used in commit messages.
---@field debug? boolean: whether to enable debug mode.

---@class CommitizenAPI
---@field create_commit fun() creates a conventional commit.

---@alias CommitType "feat"|"fix"|"docs"|"style"|"refactor"|"perf"|"test"|"chore"

---@alias LogLevel "trace"|"debug"|"info"|"warn"|"error"|"off"
