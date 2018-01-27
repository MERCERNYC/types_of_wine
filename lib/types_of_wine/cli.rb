class TypesOfWine::CLI

  def call
    greeting
    list_wines
    menu
    goodbye
  end

  def greeting
   puts ""
   puts "**************** Welcome to Types of Wine ****************"
   puts ""
  end

  def list_wines #the wine_list method depends on class method scrape_wines scraper in order to return instances of wine
    @wines = TypesOfWine::Wine.scrape_wines #instance variable to call out of the scope
    @wines.each_with_index do |wine, i|
    puts "#{i+1}. #{wine.name}" #add color
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts""
      puts "Enter the number of your favorite wine to learn more about it."
      input = gets.strip.downcase

      if input.to_i > 0
        wine = @wines[input.to_i-1]

        puts "-------------------------------- #{wine.name.upcase} --------------------------------"
        puts "Spelling: #{wine.spelling}"
        puts "Description: #{wine.description}"#needs to be indented /t for tab
        puts "Taste: #{wine.taste}"
        puts "Style: #{wine.style}"
        puts "Food_pairing: #{wine.food_pairing}"
        puts "----------------------------------------------------------------------------------------"
        puts ""
        puts "Would you like to learn more about other wines? Enter [y] to see list or exit to quit."

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
    puts "You are a true wine expert!"
  end

end
