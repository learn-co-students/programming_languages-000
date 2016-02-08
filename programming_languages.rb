languages = {
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

def reformat_languages(languages)
   a = Hash.new
  languages[:oo].each do | language, type |
    a[language]= type
   end
  languages[:functional].each do | language, type |
    a[language]= type
  end
  a.each do | key, value |
    a[key][:style]= []
  end
  a.each_key do | key |
    if languages[:oo].key?(key) == true && languages[:functional].key?(key) == true
      a[key][:style]= [:oo, :functional]
    elsif languages[:oo].key?(key) == true
      a[key][:style]= [:oo]
    else languages[:functional].key?(key) == true
      a[key][:style]= [:functional]
    end
 end
end

