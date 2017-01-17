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
    lines.shift
    lines
  end

  def break_arr_component(lines)
    lines.map! do |line|
      line.split
    end
    lines
  end
end
