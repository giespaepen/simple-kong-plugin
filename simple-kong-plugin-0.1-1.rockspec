package = "simple-kong-plugin"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git@github.com:giespaepen/simple-kong-plugin.git",
  tag = "v0.1-1"
}
description = {
  summary = "A simple kong plugin",
  homepage = "https://github.com/giespaepen/simple-kong-plugin",
  detailed = [[
	A simple kong plugin that does nothing 
  ]],
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.simple-kong-plugin.handler"] = "src/handler.lua",
    ["kong.plugins.simple-kong-plugin.schema"] = "src/schema.lua"
  }
}
