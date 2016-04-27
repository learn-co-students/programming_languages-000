def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_values|
    language_values.each do |name, type|
      unless new_hash[name]
        type[:style] = [style]
        new_hash[name] = type
      else
        new_hash[name][:style] << style
      end
    end
  end
  new_hash
end
