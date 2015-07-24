require "pry"

def reformat_languages(languages)
	new_hash = Hash.new
    languages.invert.each do |x,y|
  		x.each do |language, type|
  			new_hash[language] = type.merge({style: [y]})
  		end
  	end
  	new_hash[:javascript][:style] = [:functional,:oo]
  	new_hash
end
