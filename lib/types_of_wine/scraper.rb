class Scraper

  def self.wine_scraper

    doc = Nokogiri::HTML(open("http://winefolly.com/review/common-types-of-wine/"))
    binding.pry
    wines = []

    Name = doc.search(".span5 strong h3").text.strip
    Taste = doc.search(".span5 taste profile").text.strip
    Style = doc.search(".span5 strong").text.strip
    Description = doc.search(".span5 strong").text.strip
    Food Pairing = doc.search(".span5 strong").text.strip
  end
end
