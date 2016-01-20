

def reformat_languages(languages)
   a = Hash.new
  languages.each do | style, language |
     language.each do | key, value|
       a[key]= { key => value }
       value[:style] = style
     end
   end
 end

