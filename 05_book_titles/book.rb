class Book
  attr_writer :title
  def title
    little_words = %w[in on the a over a an and or of]
    str_arr = @title.strip.split(' ')
    str_arr[0].capitalize!
    str_arr.map { |i| little_words.include?(i) ? i : i.capitalize! }
    @title = str_arr.join(' ')
  end
end
