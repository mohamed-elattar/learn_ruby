def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, number = 2)
  ("#{str} " * number).strip!
end

def start_of_word(str, number = 1)
  str[0..(number - 1)]
end

def first_word(str)
  str.split(' ')[0]
end

def titleize(str)
  little_words = %w[on the and over in]
  str_arr = str.split(' ')
  str_arr[0].capitalize!
  str_arr.map do |i|
    little_words.include?(i) ? i : i.capitalize!
  end
  str_arr.join(' ')
end
