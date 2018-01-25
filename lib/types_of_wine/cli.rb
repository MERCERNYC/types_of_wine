class TypesOfWine::CLI

  def call
    wine_list
    menu
    goodbye
  end

  def wine_list
    puts "------------------------- Welcome to Types of Wine --------------------------------"
    puts ""
    puts "There are many different kinds of wine grapes–over a thousand,but here are a
    few of the most-commonly planted varieties around the world. Here is 8 common types of wine:"
    puts ""
    puts "------------------------------------------------------------------------------------"
  #the wine_list method depends on class method scrape_wines scraper in order to return instances of wine
    @wines = TypesOfWine::Scrapper.scrape_wines
    @wines.each.with_index(1) do |wine, i|
    puts "#{i}. #{wine.name}" #add color
    end
  end

  def wine_description(wine)
    puts "--------------------------- #{wine.name.upcase} ---------------------------"
    puts ""
    puts "#{wine.description}"#needs to be indented /t for tab
    puts ""
    puts "----------------------------------------------------------------------------"
    puts "Spelling: #{wine.spelling}"
    puts "Taste: #{wine.taste}"
    puts "Style: #{wine.style}"
    puts "Food_pairing: #{wine.food_pairing}"
    puts "----------------------------------------------------------------------------"
  end

  def menu
    input = ""
    while input != "exit"
      puts "Enter number of your favorite wine to learn more about it,list to see a list or exit."
      input = gets.strip.downcase

      if input.to_i > 0
       the_wine = @wines[input.to_i-1]
       wine_description(wine)
      elsif input == "list"
       wine_list
      else
       puts "Type list to learn more about other types wines or exit."
      end
    end
  end

  def goodbye
    puts "Thanks for checking out types of wine. See you soon!"
  end

end
