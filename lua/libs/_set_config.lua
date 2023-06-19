local M = {}
local fmt = string.format

function M.load_conf(name)
  return require(fmt("plugins.%s", name))
end

function M.load_confs(list)
  if type(list) ~= "table" then
    assert("Argument 1 was must be table.")
  end
  local l = {}
  for _, v in ipairs(list) do
    table.insert(l, require(fmt("plugins.%s", v)))
  end
  return l
end

return M
