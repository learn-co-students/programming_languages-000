def reformat_languages(languages)
    # your code here
   new_hash = {}
   languages.each{|k_style, d_members|
     d_members.each{|k_language, d_details|
       if !new_hash.include?(k_language)
         new_hash[k_language] = d_details  
       end
       new_hash.each{|k_langs, d_info|
         if d_info.include?(:style) && languages[k_style].include?(k_langs) && !d_info[:style].include?(k_style)
           d_info[:style] << k_style
         elsif !d_info.include?(:style)
           style_array = []
           style_array << k_style
           d_info[:style] = style_array
         end
       }
     }
   }
   new_hash
end


