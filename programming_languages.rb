def languages
language = 
    {
      :oo => {
        :ruby => {
          :type => "interpreted"
        },
        :javascript => {
          :type => "interpreted"
        },
        :python => {
          :type => "interpreted"
        },
        :java => {
          :type => "compiled"
        }
      },
      :functional => {
        :clojure => {
          :type => "compiled"
        },
        :erlang => {
          :type => "compiled"
        },
        :scala => {
          :type => "compiled"
        },
        :javascript => {
          :type => "interpreted"
        }
     
      }
    }

  language
end


def reformat_languages(languages)
  hash = Hash.new
  languages[:oo].each do |comLang, descpription|
      hash[comLang] = descpription
  end
  languages[:functional].each do |comLang, descpription|
      hash[comLang] = descpription
  end
  hash.each do |key, value| 
    hash[key][:style] = []
  end
  hash.each_key do |key|
    if languages[:oo].key?(key) == true && languages[:functional].key?(key) == true
    hash[key][:style] = [:oo, :functional]
    elsif languages[:oo].key?(key) == true
    hash[key][:style] = [:oo]
    else
    hash[key][:style] = [:functional]
    end
  end
  return hash 
end










