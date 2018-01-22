class TypesOfWine::CLI

  def call
    menu
    wine_list
  end

  def wine_list
    puts  "----------------Welcome to Types of Wine----------------"
    @wine = TypesOfWine::Wine.wine_scraper#the wine_list method depends on class method wine_list scraper in order to return instances of wine
    @wine.each.with_index(1) do |wine, i|
    puts "#{i}. #{wine.name}" #add color
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number (1-8) of your favorite wine to learn more about or exit to stop."
      input = gets.strip

      if input.to_i > 0
       wine = @wine[input.to_i-1]
       puts "------------- #{wine.name.upcase} -------------"#{get a gem to color these input to make more fun}
       puts ""
       puts "{wine.\t description}"#needs to be indented /t for tab
       puts ""
       puts "-----------------------------------------------"
       puts "Spelling: #{wine.spelling}"
       puts "Taste: #{wine.taste}"
       puts "Style: #{wine.style}"
       puts "Food_pairing: #{wine.food_pairing}"
       puts "-----------------------------------------------"

      elsif input == "list"
       wine_list
      elsif input == "exit"
       goodbye
      end
    end
  end

  def goodbye
    puts "Thanks for checking out types of wine. See you soon!"
  end

end
