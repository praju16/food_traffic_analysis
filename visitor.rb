class Visitor

  def initialize(lines)
    @lines = lines
  end

  def no_of_visitor(room_id)
    visitors = 0
    @lines.each do |line|
      if line[1].to_i == room_id && line[2] == "I"
        visitors += 1
      end
    end
    visitors
  end
end
