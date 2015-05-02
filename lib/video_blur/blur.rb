module VideoBlur
  class Blur
    def initialize(video:, box:)
      @video = video
      @box = box
    end
    
    def perform
      command = "ffmpeg -y -i '#{@video.input}' -filter_complex " \
            "'[0:v]split=2[v0][v1]; " \
            "[v0]crop=#{@box.width}:#{@box.height}:#{@box.x}:#{@box.y},boxblur=5[fg]; " \
            "[v1][fg]overlay=#{@box.x}:#{@box.y}[v]' " \
            "-map '[v]' -map 0:a -c:v libx264 -c:a copy -movflags +faststart '#{@video.output}'"
      blur_ok = system(command)
      unless blur_ok
        abort("An error while blurring the video, see ffmpeg output for more details")
      end
    end
  end
end