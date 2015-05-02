module VideoBlur
  class Video
    def initialize(input:, output:)
      @input = input
      @output = output
    end
    
    def width
      size.split("x")[0].to_f
    end
    
    def height
      size.split("x")[1].to_f
    end
    
    def input
      File.absolute_path(@input)
    end
    
    def output
      File.absolute_path(@output)
    end
    
    private
    
    def size
      @video_size ||= `ffmpeg -i '#{input}' 2>&1 | grep Stream | head -n 1`.match(/[0-9]{2,4}x[0-9]{2,4}/)[0]
    end
  end
end