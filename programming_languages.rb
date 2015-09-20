require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each{|style, language_list|
    language_list.each{|language, attribute|
      if !new_hash.include?(language)
        new_hash[language] = attribute  
      end
      new_hash.each{|langs, atts|
        if atts.include?(:style) && languages[style].include?(langs) && !atts[:style].include?(style)
          atts[:style] << style
        elsif !atts.include?(:style)
          style_array = []
          style_array << style
          atts[:style] = style_array
        end
      }
    }
  }
  new_hash
end