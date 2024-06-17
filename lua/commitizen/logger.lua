---@class Logger
local Logger = {}

---Creates a new log instance
---@param level LogLevel
function Logger:new(level, msg)
  local config = require("commitizen.config").config
  level = level:upper()
  if level == "OFF" then
    return
  end
  if not self.__notify_fmt then
    self.__notify_fmt = function(message)
      return string.format("[commitizen.nvim] %s", message)
    end
  end
  if level == "DEBUG" then
    if not config.debug then
      return
    end
  end
  vim.api.nvim_notify(self.__notify_fmt(msg), vim.log.levels[level], { title = "Commitizen" })
end

---Logs a trace message
---@param msg string
function Logger:trace(msg)
  self:new("trace", msg)
end

---Logs a debug message
---@param msg string
function Logger:debug(msg)
  self:new("debug", msg)
end

---Logs an info message
---@param msg string
function Logger:info(msg)
  self:new("info", msg)
end

---Logs a warn message
---@param msg string
function Logger:warn(msg)
  self:new("warn", msg)
end

---Logs an error message
---@param msg string
function Logger:error(msg)
  self:new("error", msg)
end

setmetatable({}, Logger)

return Logger
