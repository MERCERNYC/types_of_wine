class TypesOfWine::Scraper

  def self.scrape_wines

  #for each wine get the wines from winefolly
  #instantiate a wine based on the information bellow
  #For each iteration over the collection of elements returned to us by the doc.search(""div.span5"")
  #line, we are making a new instance of the Wine class and giving that instance the name, spelling...

  doc = Nokogiri::HTML(open("http://winefolly.com/review/common-types-of-wine/"))
  doc.search("div.span5").each do |wine| #iterate over wine elements
    wine = TypesOfWine::Wine.new #create wine instance
    binding.pry
    wine.name = doc.search("div.span5 h3").text.strip
    wine.spelling = doc.search("div.span5 p").children[0].text.strip #Select the first <1> element inside
    wine.taste = doc.search("div.span5 p").children[2].text.strip
    wine.style = doc.search("div.span5 p").children[6].text.strip
    wine.description = doc.search("div.span5 p").children[10].text.strip
    wine.food_pairing = doc.search("div.span5 p").children[16].text

    wine.save
    end
  end

end
