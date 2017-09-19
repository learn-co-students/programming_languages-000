require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, language_info|

    language_info.each do |language, type|

      same_hash = new_hash.select { |key, hash| key == language }

        same_hash.find do |x,y|
          y[:style].push(style)
        end

        if same_hash == {}
          new_hash[language] = {type: type.values.join}.merge!(:style => [style])
        end

    end

  end
  new_hash
end

#reformat_languages(languages)
