class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (299*r + 587*g + 114*b) / 1000
  end

  def brightness_difference(another_color)
    #your code here
  end

  def hue_difference(another_color)
    #your code here
  end

  def enough_contrast?(another_color)
    # your code here
  end
end

color = Color.new(42, 21, 58)
p color.brightness_index