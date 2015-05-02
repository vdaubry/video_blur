module VideoBlur
  class Screen
    def initialize(width: 1440, height: 815)
      @width = width.to_f
      @height = height.to_f
    end
    
    def ratio(video:)
      #If video is re-dimensionned along x axis
      if video.width > @width
        video.width/@width
      #If video is re-dimensionned along y axis
      elsif video.height > @height
        video.height/@height
      #If video fits on screen
      else
        1.0
      end
    end
  end
end