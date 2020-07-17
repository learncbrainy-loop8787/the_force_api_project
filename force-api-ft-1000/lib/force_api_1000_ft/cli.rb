require "pry"
  class Cli

    def run
      puts "Hello and welcome to the the force API!"
  
      puts "Please hold while we explore the galaxy for planets..."
      API.get_planets
      puts "Thank you for your patience, we now have your information."
      print_main_menu
    end
  
    def print_main_menu
      puts "Press 1 to list out planets"
      puts "Enter 2 for planet info"
      puts "Type 'exit' to exit program"
      main_menu
    end
  
    def main_menu
      user_input = gets.strip
  
      if user_input == "1"
        print_planets
print_main_menu
      elsif user_input = "2"
       puts "Select planet you would like to see"
    user_input = gets.strip
    planet = Planets.all[user_input.to_i - 1]
   puts planet.rotation_period
    puts planet.diameter
    puts planet.population 
    puts planet.gravity 
    puts planet.terrain
      elsif user_input == "exit"
        goodbye
        exit
      else
        invalid_input
        print_main_menu
      end
    end
  
    def print_planets
      puts ""
      puts "----------------"
      Planets.all.each.with_index(1) do |planet, index|
        puts ""
        puts "Planet #{index}."
        puts "Planet: #{planet.name}"
        
      end
    end
  
    def goodbye
      puts "Untill next time. May the force be with you!"
    end
  
  def invalid_input
    puts "Invalid command, please try again!"
  end
 
    
end