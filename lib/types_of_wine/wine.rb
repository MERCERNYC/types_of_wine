class TypesOfWine::Wine
  attr_accessor :name, :taste, :style, :description, :food_pairing

  @@all = []

  def initalize(name=nil, taste=nil, style=nil, description=nil, food_pairing=nil)#provide default value with nil
    @name = name
    @taste = taste
    @style = style
    @description = description
    @food_pairing = food_pairing
    @@all << self
  end

  def self.all
    @@all
  end

  def self.wine_scraper
    doc = Nokogiri::HTML(open("http://winefolly.com/review/common-types-of-wine/"))
    doc.search("div.span5 h3").each do |wines|

    wine = self.new
    
    wine.spelling = doc.search("div.span5 p").children[0].text.strip #Select the first <1> element inside
    wine.taste = doc.search("div.span5 p").children[2].text.strip
    wine.style = doc.search("div.span5 p").children[6].text.strip
    wine.description = doc.search("div.span5 p").children[10].text.strip
    wine.food_pairing = doc.search("div.span5 p").children[16].text
    wine #return wine_scraper
  end

end
