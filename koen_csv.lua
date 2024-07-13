M = {}

function M.to_word_pairs()
  local word_pairs = {}
  
  for line in io.lines("koen.csv") do
    line = line:gsub("%s+", "")

    if #line > 0 then
      local ko, en = line:match("%s*(.-),%s*(.*)")
      
      if not ko then
        ko = line
      end
      
      if #ko == 0 then 
        ko = "Korean word missing"
      end

      if not en or #en == 0 then
        en = "English word missing"
      end
       
      table.insert(word_pairs, {
        ko = ko,
	en = en
      })
    end
  end

  return word_pairs
end

return M
