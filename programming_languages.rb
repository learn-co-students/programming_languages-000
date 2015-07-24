def reformat_languages(languages)
  new_format = {}
  languages.each do |oo_or_functional_key, oo_or_functional_key_hash|
  	oo_or_functional_key_hash.each do |language, language_hash|
  		new_format[language] ||= {} 
  		new_format[language][:type] = language_hash.values[0]
  		new_format[language][:style] ||= []
  		new_format[language][:style] << oo_or_functional_key
  	end
  end
  new_format
end
