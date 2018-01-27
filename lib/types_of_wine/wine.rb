class TypesOfWine::Wine
  attr_accessor :name, :spelling, :taste, :style, :description, :food_pairing

   def self.scrape_wines
    wines = []
    doc = Nokogiri::HTML(open("http://winefolly.com/review/common-types-of-wine/"))
    list_wine = doc.css("div.span5")
    list_wine.each do |wine|
      new_wine = self.new
      new_wine.name = wine.css("h3").text.strip
      new_wine.spelling = wine.css("p").children[0].text.strip #Select the first <1> element inside
      new_wine.taste = wine.css("p").children[2].text.strip
      new_wine.style = wine.css("p").children[6].text.strip
      new_wine.description = wine.css("p").children[10].text.strip
      new_wine.food_pairing = wine.css("p").children[16] ? wine.css("p").children[16] : wine.css("p").children[14].text
      wines << new_wine
    end
      wines
  end
end
