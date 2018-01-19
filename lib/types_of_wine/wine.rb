class TypesOfWine::Wine
  attr_accessor :name, :taste, :style, :description, :food_pairing

  @@all = []

  def self.all
   @@all << self
  end

  def initalize(name=nil, taste=nil, style=nil, description=nil, food_pairing=nil)
    @name = name
    @taste = taste
    @style = style
    @description = description
    @food_pairing = food_pairing
  end

  def self.scrape_wine
    doc = Nokogiri::HTML(open("http://winefolly.com/review/common-types-of-wine/")).text

    wine = self.new

    wine.name = doc.search("div.span5 h3").text.strip
    wine.taste = doc.search("div.span5.icon-caret-right").text.strip
    wine.style = doc.search(".span5.icon-caret-right i strong").text.strip
    wine.description = doc.search(".span5 strong").text.strip
    wine.food_pairing = doc.search(".span5 strong").text.strip
    binding.pry
    wine #return wine_scraper
  end

end
