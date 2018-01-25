class TypesOfWine::CLI

  def call
    puts "------------------------- Welcome to Types of Wine --------------------------------"
    TypesOfWine::Scraper.scrape_wines
    menu
    goodbye
  end

  def list_wines
    puts "There are many different kinds of wine grapes–over a thousand,but here are a
    few of the most-commonly planted varieties around the world.Here is a list of 8 common types of wine:"
    puts ""
    puts "------------------------------------------------------------------------------------"
  #the wine_list method depends on class method scrape_wines scraper in order to return instances of wine
    TypesOfWine::Wine.all.each_with_index do |wine, i|
    puts "#{i+1}. #{wine.name}" #add color
    end
  end

  def menu
    list_wines
    input = nil
    while input != "exit"
      puts "Enter the number of your favorite wine to learn more about it."
      input = gets.strip.downcase

      if input.to_i > 0
        wine = TypesOfWine::Wine.all[input.to_i-1]

        puts "--------------------------- #{wine.name.upcase} ---------------------------"
        puts ""
        puts "#{wine.description}"#needs to be indented /t for tab
        puts ""
        puts "----------------------------------------------------------------------------"
        puts "Spelling: #{wine.spelling}"
        puts "Taste: #{wine.taste}"
        puts "Style: #{wine.style}"
        puts "Food_pairing: #{wine.food_pairing}"
        puts "--------------------------- -------------------------------------------------"
        puts "Would you like to learn more about other wines? Enter [y,n] to see list or exit to quit."

        input = gets.strip.downcase
        if input == "yes" || input == "y"
         list_wines
        else
         goodbye
         exit
        end
      end
    end
  end

  def goodbye
    puts "Thanks for checking out types of wine. See you soon!"
  end

end
