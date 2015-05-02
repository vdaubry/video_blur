module VideoBlur
  module Runner
    def execute(path:, options:)
      screen = VideoBlur::Screen.new(options[:width], 
                                      options[:height])
      
      video = VideoBlur::Video.new(input: path, 
                                  output: options[:output])
      
      box = VideoBlur::Box.new(x: options[:x],
                               y: options[:y],
                               width: options[:width],
                               height: options[:height],
                               ratio: screen.ratio(video: video))
      

      VideoBlur::Blur.new(video: video, box: box).perform
    end
  end
end