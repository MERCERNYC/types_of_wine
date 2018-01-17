class TypesOfWine::CLI
  def call
    start
    wine_list
  end

  def wine_list
    puts  "----------------------------Welcome to Types of Wine--------------------------------"
    @wine = TypesOfWine::Wine.wine_list#class Wine with a #wine_list method(build)
    @wine.each.with_index(1) do |wine, i|
    puts "#{i}. #{wine.name}"
    end
  end

  def start
    input = nil
    while input != "exit"
      puts "Enter the number (1-8) your favorite wine to learn more abou it."
      puts "Enter list to see the wine list again."
      puts "Enter exit to end the program."
      input = gets.strip

      if input.to_i > 0
       wine = @wine[input.to_i-1]
       TypesOfWine::Wine.wine_description#create a method with wine_description
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
