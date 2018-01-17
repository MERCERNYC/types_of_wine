class Wine
  attr_accessor :name, :taste, :style, :description, :food_pairing

  @@all = []

  def self.all
   @@all << self
  end

  def initalize(name, taste, style, description, food_pairing)
    @name = name
    @taste = taste
    @style = style
    @description = description
    @food_pairing = food_pairing
  end


end
