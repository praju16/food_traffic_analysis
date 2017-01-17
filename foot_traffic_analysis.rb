require './file_proccesor.rb'
require './room.rb'

class FootTrafficAnalysis
  
  def initialize(file)
    @file = file
  end 

  def generate_report
    lines = []
    file_obj = FileProccesor.new(@file)
    lines = file_obj.process_input
    room_obj =  Room.new(lines)
    room_obj.compute
  end
end

traffic_analysis = FootTrafficAnalysis.new(ARGV[0])
traffic_analysis.generate_report