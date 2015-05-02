module VideoBlur
  module Runner
    def self.execute(path:, options:)
      path = path.first
      validate(path: path, options: options)
      
      screen = VideoBlur::Screen.new(width: options[:screen_width], 
                                      height: options[:screen_height])
      
      video = VideoBlur::Video.new(input: path, 
                                  output: options[:output])
      
      box = VideoBlur::Box.new(x: options[:x],
                               y: options[:y],
                               width: options[:width],
                               height: options[:height],
                               ratio: screen.ratio(video: video))
      

      VideoBlur::Blur.new(video: video, box: box).perform
    end
    
    def self.validate(path:, options:)
      abort("Missing path to video") unless !path.empty?
      abort("Video file not found: #{@input}") unless File.exists?(path)

      abort("Missing box options") unless options[:x] && 
                                          options[:y] && 
                                          options[:width] && 
                                          options[:height]
    end
  end
end