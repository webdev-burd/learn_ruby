class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = (@seconds / 3600).floor
    remaining = @seconds - hours * 3600
    mins = (remaining / 60).floor
    remaining = @seconds - (hours * 3600) - (mins * 60)
    seconds = remaining

    hours_s = hours.to_s.length < 2 ? "0#{hours}" : hours
    mins_s = mins.to_s.length < 2 ? "0#{mins}" : mins
    seconds_s = seconds.to_s.length < 2 ? "0#{seconds}" : seconds


    [hours_s, mins_s, seconds_s].join(":")
  end
end
