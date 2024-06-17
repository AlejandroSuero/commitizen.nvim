---@diagnostic disable: undefined-field
describe("[commitizen.nvim tests]", function()
  describe("setup", function()
    it("should create user commands", function()
      require("commitizen").setup({})
      local user_commands = vim.api.nvim_get_commands({})
      assert.not_nil(user_commands["Commitizen"])
    end)

    it("should set up the plugin with the default config", function()
      require("commitizen").setup()
      local expected = require("commitizen.config").config

      assert.not_nil(expected)
    end)

    it("should set up the plugin with a custom config", function()
      require("commitizen").setup({
        confirm_before_commit = false,
        extra_types = { "foo" },
      })
      local expected = require("commitizen.config").config

      assert.is_false(expected.confirm_before_commit)
      assert.are.same({ "foo" }, expected.extra_types)
    end)
  end)
end)
