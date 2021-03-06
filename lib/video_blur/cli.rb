require 'optparse'
require 'singleton'
require 'byebug'

module VideoBlur
  class CLI
    include Singleton
    
    def run(args)
      options, path = parse_cli_args(args)
      VideoBlur::Runner.execute(path: path, options: options)
    end
    
    def parse_cli_args(argv)
      options = {}
      opt_parser = OptionParser.new
      opt_parser.banner = "Usage: video_blur [options] [input_file]"
      options[:output] = "output.mp4"
      
      opt_parser.on("-o", "--output OUTPUT", "Set output directory") do |o|
        options[:output] = o
      end
      
      opt_parser.on("-W", "--screen-width WIDTH", "Set screen width (default 1440)") do |width|
        options[:screen_width] = width.to_i
      end
      
      opt_parser.on("-H", "--screen-height HEIGHT", "Set screen width (default 1440)") do |height|
        options[:screen_height] = height.to_i
      end
      
      opt_parser.on("-x", "--box-x X-POSITION", "Set box x origin") do |x|
        options[:x] = x.to_i
      end
      
      opt_parser.on("-y", "--box-y Y-POSITION", "Set box y origin") do |y|
        options[:y] = y.to_i
      end
      
      opt_parser.on("-w", "--box-width WIDTH", "Set box width") do |width|
        options[:width] = width.to_i
      end
      
      opt_parser.on("-e", "--box-height height", "Set box width") do |height|
        options[:height] = height.to_i
      end
        
      opt_parser.on("-h", "--help", "Prints this help") do
        puts opt_parser
        exit
      end
      
      path = opt_parser.parse!(argv)
      
      return options, path
    end
  end
end