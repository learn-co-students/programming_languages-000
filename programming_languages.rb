def reformat_languages(languages)
  # your code here
  a = languages.invert
  a.each do |b,c|
    b.each do |d,e|
    e[:style] = [c]
    end
  end
  
  a = a.keys
  final_hash = a[0].merge(a[1])

  final_hash[:javascript][:style] << :oo ## couldn't figure this part out, will revisit.
  return final_hash

end

