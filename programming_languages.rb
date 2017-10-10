def reformat_languages(languages)
  # your code here
  reformatted = {}

languages.each do |style,language_hash|
  language_hash.each do |language,type_hash|
      arr = []
      arr << style
      type_hash.each do |k,v|
        reformatted[language] ={k => v, :style => arr}
      end
  end
end

return reformatted
end
