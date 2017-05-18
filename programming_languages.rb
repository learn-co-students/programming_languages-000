require 'pry'

def reformat_languages(languages)
	new_hash = {}
	languages.each do |style, step|
		step.each do |name, type|
			binding.pry
			new_hash[name] = type unless new_hash[name]
			new_hash[name][:style] = [] unless new_hash[name][:style]
			new_hash[name][:style] << style
		end
	end
return new_hash
end
  	


=begin
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
=end