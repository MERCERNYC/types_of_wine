require 'pry'
class Scraper

  def self.wine_scraper

    doc = Nokogiri::HTML(open("http://winefolly.com/review/common-types-of-wine/"))
    binding.pry
    name = doc.search("div.span5 h3").text.strip
    taste = doc.search("div.span5 icon-caret-right::before ").text.strip
    style = doc.search(".span5.icon-caret-right i strong").text.strip
    description = doc.search(".span5 strong").text.strip
    food_pairing = doc.search(".span5 strong").text.strip
    wine #return wine_scraper
  end

end
