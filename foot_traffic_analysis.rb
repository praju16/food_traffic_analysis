# require './file_proccessor.rb'
# require 'set'

class FootTrafficAnalysis
  
  def initialize(file)
    @file = file
    @rooms = []
    @visitors = []
    @lines = []
  end 

  def generate_report
    file_obj = FileProccesor.new(@file)
    @lines = file_obj.process_input
  end

  def process_log(data)
    
  end


  def logic(visitor_no,id,activity,timestamp)
  end

end

class FileProccesor
    
  def initialize(file=nil)
    @file = file
  end 

  def process_input
    lines = []
    file = File.open(@file)
    lines = file_to_array_convert(file,lines)
    break_arr_component(lines)
  end

  def file_to_array_convert(file,lines)
    file.each_line do |line|
      lines << line.chomp
    end
    lines
  end

  def break_arr_component(lines)
    lines.map! do |line|
      line.split
    end
    lines
  end

end


traffic_analysis = FootTrafficAnalysis.new(ARGV[0])
traffic_analysis.generate_report