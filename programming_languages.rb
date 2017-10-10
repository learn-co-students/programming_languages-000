def reformat_languages(languages)
  # your code here
  reformatted = {}

  languages.each do |style,language_hash|

    language_hash.each do |language,type_hash|

        if reformatted.include?(language)
          arr = []
          arr = reformatted[language][:style] << style
        else
        type_hash.each do |k,v|
          arr = []
          reformatted[language] ={k => v, :style => arr << style}
        end
      end
    end
  end

  return reformatted
end
