local config = require("lapis.config")

config("development", {
  server = "nginx",
  code_cache = "off",
  encoding = "utf8",
  num_workers = "1"
})
