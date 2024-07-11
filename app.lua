local lapis = require("lapis")
local app = lapis.Application()
local word_pairs = {
  {
    ko = "안영하세요",
    en = "hello"
  },
  {
    ko = "물",
    en = "water"
  },
}

app:get("/", function(self)
  return {
    json = word_pairs
  }
end)

return app
