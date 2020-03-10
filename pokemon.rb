require "tty-prompt"
prompt = TTY::Prompt.new

def pokemon_opening_line(name) 
    case name
    when "Pikachu"
        return "May your lightning strike fear into the heart of all mortals! HA!"
    when "Bulbasaur"
        return "May you make like a mighty tree, and leaf!.. your oponents ruined on the battlefield... HA!"
    when "Charmander"
        return "May you burn them, BURN THEM ALLLLL HA!"
    when "Squirtle"
        return "May your water hydrate death! So that he may carry out his duties on your opponents! HA!"
    end
end


=begin Creating Pokemon class
pokemon should have
    name
    level
    health - determined by level * a number
    a hash of attacks, no more than 4
    element type
=end

################# NEW POKEMON CLASS #################

class Pokemon
    attr_accessor :name, :level, :attacks, :element, :health

    def initialize(name, level, attacks, element)
        @name = name
        @level = level
        @attacks = attacks
        @element = element
        @health = 10 * (@level * 3)
    end

end

################# POKEMON INSTANCES #################

pikachu = Pokemon.new("Pikachu", 7, {"Quick Attack" => 90, "Thundershock" => 110, "Thunderwave" => 100}, "Electric")
charmander = Pokemon.new("Charmander", 5, {"Scratch" => 40, "Ember" => 50, "Fire Fang" => 35}, "Fire")
bulbasaur = Pokemon.new("Bulbasaur", 8, {"Vine Whip" => 110, "Razor Leaf" => 100, "Ram" => 60}, "Leaf")
squirtle = Pokemon.new("Squirtle", 10, {"Bubble" => 110, "Tackle" => 60, "Water Gun" => 140}, "Leaf")

p "Welcome to the Pokémon Stadium, where the fiercest trainers do battle! HA!"
choices = [pikachu.name, charmander.name, bulbasaur.name, squirtle.name]
user_pokemon = prompt.select("Choose your pokemon!", choices)
p "You have chosen #{user_pokemon}! #{pokemon_opening_line(user_pokemon)}"