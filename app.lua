local lapis = require("lapis")
local koen_csv = require("koen_csv")
local app = lapis.Application()

app:get("/", function(self)
  return {
    json = koen_csv.to_word_pairs()
  }
end)

return app
