require 'pry'

def reformat_languages(languages)
  new_h = {}
  	languages.each do |signs,prog|
   		prog.each do |lang,types|
  			new_h[lang] ||= {}
  			new_h[lang][:type] = types.values[0]
  			new_h[lang][:style] ||= []
  			new_h[lang][:style] << signs
  		end
  	end 
  	new_h
end
