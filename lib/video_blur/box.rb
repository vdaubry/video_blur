module VideoBlur
  class Box
    def initialize(x:, y:, width:, height:, ratio: 1)
      @x = x
      @y = y
      @width = width
      @height = height
      @ratio = ratio
    end
    
    def x      
      (@x * @ratio).to_i
    end
    
    def y
      (@y * @ratio).to_i
    end
    
    def width
      (@width * @ratio).to_i
    end
    
    def height
      (@height * @ratio).to_i
    end
  end
end