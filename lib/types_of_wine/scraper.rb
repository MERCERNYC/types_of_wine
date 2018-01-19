class Scraper

  def self.wine_scraper

    doc = Nokogiri::HTML(open("http://winefolly.com/review/common-types-of-wine/"))

    name = doc.search("div.row.span5 strong h3").text.strip
    taste = doc.search(".span5 taste profile").text.strip
    style = doc.search(".span5.icon-caret-right i strong").text.strip
    description = doc.search(".span5 strong").text.strip
    food_pairing = doc.search(".span5 strong").text.strip
    wine #return wine_scraper
  end

end
