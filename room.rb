require './visitor.rb'
require './timer.rb'

class Room

  def initialize(lines)
    @lines = lines
    @rooms = []
    @visitors = []
    @minutes = []
    @avg_visit = []
  end

  def compute
    room_index
    total_visitors_per_room
    total_minutes_per_room
    average_time_visit_per_room
    output
  end

  def room_index
    @lines.each do |line|
      @rooms << line[1].to_i
    end
    @rooms = @rooms.uniq.sort
  end

  def total_visitors_per_room
    vistor_obj = Visitor.new(@lines)
    @rooms.each do |room|
      @visitors << vistor_obj.no_of_visitor(room)
    end
  end

  def total_minutes_per_room
    timer_obj = Timer.new(@lines)
    @rooms.each do |room|
      @minutes << (timer_obj.total_time_spent(room))
    end
  end

  def average_time_visit_per_room
    @rooms.length.times do |i|
      @avg_visit << (@minutes[i] / @visitors[i])
      i += 1
    end
  end

  def output
    @rooms.count.times do |i|
      puts "Room #{@rooms[i]}, #{@avg_visit[i]} minute average visit, #{@visitors[i]} visitor total."
    end
  end
end