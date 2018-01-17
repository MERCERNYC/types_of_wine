class TypesOfWine::CLI
  def call
    start
  end

  def start
    puts "--------------Welcome to Types of Wine-------------------"
    puts ""
    puts "Pick your favorite wine to learn more about it. Enter a name or number."
    puts ""
    puts "1. Cabernet Sauvignon
          2. Syrah
          3. Zinfandel
          4. Pinot Noir
          5. Chardonnay
          6. Sauvignon Blanc
          7. Pinot Gris
          8. Riesling"

    input = gets.strip
    case input

      when "1"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      when "2"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      when "3"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      when "4"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      when "5"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      when "6"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      when "7"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      when "8"
        puts "spelling:
              Taste:
              Style:
              Description:
              Food Paring:"
      else
        exit
        start
    end
  end
end
