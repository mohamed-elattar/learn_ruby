class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    second = @seconds % 60
    minute = ((@seconds - second) % (60 * 60)) / 60
    hour = (@seconds - minute - second) / (60 * 60)

    time_string = padded("#{hour}:#{minute}:#{second}")
    time_string
  end

  def padded(str)
    str_arr = str.split(':')
    str_arr.map { |i| i.length == 2 ? i : i.replace("0#{i}") }
    str_arr.join(':')
  end
end
