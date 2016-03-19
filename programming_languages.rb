def reformat_languages(languages)
  # your code here
  formated = {}
  languages.each do |style, langs_hash|
    langs_hash.each do |lang, types_hash|
      formated[lang] ||= {}
      types_hash.each do |label, type|
        formated[lang][label] ||= type
        formated[lang][:style] ||= []
        formated[lang][:style] << style
      end
    end
  end
formated
end
