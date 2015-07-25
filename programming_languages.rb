def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      new_hash[language] ||= {}
      new_hash[language][:type] = type_hash.values[0]
      new_hash[language][:style] ||= []
      new_hash[language][:style] << style
    end
  end
  new_hash
end
