class TypesOfWine::CLI

  def call
    greeting
    list_wines
    menu
    goodbye
  end

  def greeting
   puts "********************************** Welcome to Types of Wine **********************************"
   puts ""
   puts "There are many different kinds of wine grapes–over a thousand, but here are the top varieties."
   puts ""
  end

  def list_wines
    @wines = TypesOfWine::Wine.scrape_wines
    @wines.each_with_index do |wine, i|
    puts "#{i+1}. #{wine.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter the number of your favorite wine to learn more about it."
      input = gets.strip.downcase

      if input.to_i > 0
        wine = @wines[input.to_i-1]

        puts "----------------------------------------------*-----------------------------------------------"
        puts "#{wine.name.upcase}".colorize(:magenta)
        puts ""
        puts "Spelling: ".colorize(:magenta) + "#{wine.spelling}"
        puts "Description: ".colorize(:magenta) + "#{wine.description}"
        puts "Taste: ".colorize(:magenta) + "#{wine.taste}"
        puts "Style: ".colorize(:magenta) + "#{wine.style}"
        puts "Food_pairing: ".colorize(:magenta) + "#{wine.food_pairing}"
        puts "Alternative: ".colorize(:magenta) + "#{wine.alternative}"
        puts ""
        puts "----------------------------------------------*-----------------------------------------------"
        puts ""
        puts "Would you like to learn more about other types of wine? Enter [y] to see menu or exit to quit."

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
    puts "Cheers to wine! I see you soon."
  end

end
