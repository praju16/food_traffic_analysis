class Timer

  def initialize(lines)
    @lines = lines
  end

  def total_time_spent(room_id)
    leaving = 0
    entering = 0
    @lines.each do |line|
      if line[1].to_i == room_id && line[2] == "I"
        entering += line[3].to_i
      elsif line[1].to_i == room_id && line[2] == "O"
        leaving += line[3].to_i
      end
    end
    leaving - entering + 1
  end

end

# time_obj = Timer.new(ARGV[0])
# timer_obj.total_time_spent(1)