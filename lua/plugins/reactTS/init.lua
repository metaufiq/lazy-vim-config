local M = {}

local function first_to_upper(str)
  return (str:gsub("^%l", string.upper))
end

local replace_default_value = function(component_name, path)
  os.execute("sed -i '' 's@component@" .. component_name .. "@g' " .. path .. "/component/*")
  pcall(
    os.execute,
    "mv -f " .. path .. "/component/component.tsx " .. path .. "/component/" .. component_name .. ".tsx"
  )

  os.execute("mv -f " .. path .. "/component/ " .. path .. "/" .. component_name .. "/")
end

local generate_component = function(component_name)
  local state = require("neo-tree.sources.manager").get_state("filesystem")
  local tree = state.tree
  local node = tree:get_node()
  local path = node:get_id()

  if node.type ~= "directory" then
    vim.notify(
      "cannot create component on file level, please close file buffer and select a folder in noe tree",
      vim.log.levels.ERROR
    )
    return
  end

  os.execute("cp -R ~/.config/nvim/lua/plugins/reactTS/component " .. path)
  replace_default_value(component_name, path)

  vim.notify("success create template " .. component_name .. " to " .. node.type .. " " .. path, vim.log.levels.INFO)
end

local handler = function()
  local state = require("neo-tree.sources.manager").get_state("filesystem")
  local tree = state.tree
  local node = tree:get_node()
  if node.type ~= "directory" then
    vim.notify(
      "cannot create component on file level, please close file buffer and select a folder in noe tree",
      vim.log.levels.ERROR
    )
    return
  end

  local input = vim.fn.input("component name: ")
  generate_component(first_to_upper(input))
end

vim.api.nvim_create_user_command("GenerateReactTSComponent", handler, { nargs = "?" })

return M
