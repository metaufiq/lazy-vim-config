local M = {}

local generateComponent = function(componentName)
  local state = require("neo-tree.sources.manager").get_state("filesystem")
  local tree = state.tree
  local node = tree:get_node()
  local path = node:get_id()

  os.execute("cp -R ~/.config/nvim/lua/plugins/react/component " .. path)
  os.execute("mv -f " .. path .. "/component/ " .. path .. "/" .. componentName .. "/")
  vim.notify("success create template " .. componentName .. " to " .. node.type .. " " .. path, vim.log.levels.INFO)
end

vim.api.nvim_create_user_command("GenerateReactTSComponent", function()
  local input = vim.fn.input("component name: ")
  generateComponent(input)
end, { nargs = "+" })

return M
