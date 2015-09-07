require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |first, second|
    second.each do |language, data|

      if new_hash[language].nil?
      new_hash[language] = data
      end

      if new_hash[language][:style].nil?
        
        new_hash[language][:style] = []
      end
      new_hash[language][:style] << first
      
    end
    
  end
  new_hash
end

