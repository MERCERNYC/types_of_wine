class TypesOfWine::Wine
  attr_accessor :name, :spelling, :taste, :style, :description, :food_pairing

  @@all = []
 # every time an instance of the class is initialized we should push it into the @@all class variable

  def initialize(name = nil, spelling = nil, taste = nil, style = nil, description = nil, food_pairing = nil)
    @name = name
    @spelling = spelling
    @taste = taste
    @style = style
    @description = description
    @food_pairing = food_pairing
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.find_by_name(name)
  #   self.all.detect{|w| w.name == name}
  # end

end
