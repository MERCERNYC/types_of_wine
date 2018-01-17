class TypesOfWine::CLI
  def call
    start
    wine_list
    goodbye
  end

  def wine_list
    puts  "----------------------------Welcome to Types of Wine--------------------------------"
    @wine = TypesOfWine::Wine.wine_list
    @wine.each.with_index(1) do |wine, i|
    puts "#{i}. #{wine.name} #{wine.taste} - #{wine.style} - #{wine.description} - #{wine.food_pairing} "
    end
  end

  def start
    input = nil
    while input != "exit"
    puts "Enter the number your favorite wine type (1-8) to learn more about it."
    input = gets.strip.downcase

    if input.to_i < 8
     wine = @wine[input.to_i-1]
        puts "#{i}. #{wine.name} #{wine.taste} - #{wine.style} - #{wine.description} - #{wine.food_pairing} "
      elsif input == "list"
        wine_list
      else
        puts "Woud you like to learn more about wines, type list or exit."
      end
    end
  end

  def goodbye
    puts "Thanks for checking out types of wine. See you soon!"
  end
end
