class TypesOfWine::CLI

  def call
    puts "********** Welcome to Types of Wine **********"
    list_wines
    menu
    goodbye
  end

  def list_wines #the wine_list method depends on class method scrape_wines scraper in order to return instances of wine
    @wines = TypesOfWine::Wine.wine_list
    @wines.each_with_index do |wine, i|
    puts "#{i+1}. #{wine.name}" #add color
  end
end


  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of your favorite wine to learn more about."
      input = gets.strip.downcase

      if input.to_i > 0
        wine = @wines[input.to_i-1]

        puts "--------------------------- #{wine.name} ---------------------------"
        puts ""
        puts "#{wine.description}"#needs to be indented /t for tab
        puts ""
        puts "----------------------------------------------------------------------------"
        puts "Spelling: #{wine.spelling}"
        puts "Taste: #{wine.taste}"
        puts "Style: #{wine.style}"
        puts "Food_pairing: #{wine.food_pairing}"
        puts "-----------------------------------------------------------------------------"
        puts ""
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
