def translate(str)
  vowels = %w[a e i o qu]
  str_arr = str.split(' ')
  str_arr.each do |i|
    i.each_char do |c|
      next unless vowels.include?(c)
      index = i.index(c)
      if index.zero?
        i.replace("#{i}ay")
      else
        sub = i[0..(index - 1)]
        i.replace("#{i[index..str.length] + sub}ay")
      end
      break
    end
  end
  str_arr.join(' ')
end
