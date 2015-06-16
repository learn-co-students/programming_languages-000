def reformat_languages(languages)
  # your code here
  languages.each_with_object({}) do |(style, style_value), result|
	style_value.each do |k,v|
	  if !result.has_key?(k) then
	    result.store(k, { :style => [style], :type => v[:type] })
	  else
        result[k][:style] << style
      end	  
	end
  end
end
