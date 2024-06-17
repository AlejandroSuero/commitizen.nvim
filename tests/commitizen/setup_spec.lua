---@diagnostic disable: undefined-field
describe("[commitizen.nvim tests]", function()
  describe("setup", function()
    it("should set up the plugin with the default config", function()
      require("commitizen").setup()
      local expected = require("commitizen.config").config

      assert.not_nil(expected)
    end)

    it("should set up the plugin with a custom config", function()
      require("commitizen").setup({
        confirm_before_commit = false,
      })
      local expected = require("commitizen.config").config

      assert.is_false(expected.confirm_before_commit)
    end)
  end)
end)
