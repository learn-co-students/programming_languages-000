require 'pry'

languages = {
  :oo => {
    :javascript => {
      :type => "interpreted"
    }
  },
  :functional => {
    :javascript => {
      :type => "interpreted"
    }
  }
}

def reformat_languages(languages)
  # your code here
  reorganized_hash = {}
  languages.each do |language_style, languages_hash|
    languages_hash.each do |language, language_type_hash|
      if reorganized_hash[language] == nil
        reorganized_hash[language] = language_type_hash
        reorganized_hash[language][:style] = []
      end
      reorganized_hash[language][:style] << language_style
    end
  end
  reorganized_hash
end

reformat_languages(languages)
