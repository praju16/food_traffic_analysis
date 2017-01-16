# require './input_1.txt'
require 'set'

class FootTrafficAnalysis
  
  def initialize(file)
    @file = File.open(file).shift
    @rooms = []
    @visitors = []
    sdafdf
  end 

  def generate_report
    @file.each_line do |line|
       process_log(line)
    end
  end


  def process_log(data)
    visitor_no, room_no, visitor_activity, timestamp = data.split 
    logic(visitor_no,room_no,visitor_activity,timestamp)
  end


  def logic(visitor_no,id,activity,timestamp)
    if @rooms[id].nil?
      @rooms[id]= Set.new()
      @rooms[id][:vistior_count] +=1 if activity == 'I'
    end 
    @rooms[id][:total_time] = 0 if rooms[id][:total_time].nil?
  end


end


traffic_analysis = FootTrafficAnalysis.new(ARGV[0])
traffic_analysis.generate_report