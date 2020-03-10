require "tty-prompt"
prompt = TTY::Prompt.new
pokemon_is_defeated = false

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

################# POKEMON INSTANCES + ARRAY #################

pikachu = Pokemon.new("Pikachu", 7, {"Quick Attack" => 90, "Thundershock" => 110, "Thunderwave" => 100}, "Electric")
charmander = Pokemon.new("Charmander", 5, {"Scratch" => 40, "Ember" => 50, "Fire Fang" => 35}, "Fire")
bulbasaur = Pokemon.new("Bulbasaur", 8, {"Vine Whip" => 110, "Razor Leaf" => 100, "Ram" => 60}, "Leaf")
squirtle = Pokemon.new("Squirtle", 10, {"Bubble" => 110, "Tackle" => 60, "Water Gun" => 140}, "Leaf")
pokemon_array = [pikachu, charmander, bulbasaur, squirtle]

## Creates specific dialouge once user has chosen pokemon ##

def pokemon_opening_line(name) 
    case name
    when "Pikachu"
        return "May your lightning strike fear into the heart of all mortals! HA!"
    when "Bulbasaur"
        return "May you make like a mighty tree, and leaf!.. your oponents ruined on the battlefield... HA!"
    when "Charmander"
        return "May you burn them, BURN THEM ALLLLL HA!"
    when "Squirtle"
        return "May your water hydrate death! So he can carry out his duties on your foes! HA!"
    end
end

########### Randomizes a pokemon for the computer ###########

def randomize_ai_pokemon(arr)
    arr[rand(arr.length)]
end

#################### BEGIN APPLICATION RUN ####################

p "Welcome to the Pokémon Stadium, where the fiercest trainers do battle! HA!"

choices = [pikachu.name, charmander.name, bulbasaur.name, squirtle.name]
user_selection = prompt.select("Choose your pokemon!", choices)

p "You have chosen #{user_selection}! #{pokemon_opening_line(user_selection)}"

case user_selection
when "Pikachu"
    player_pokemon = pikachu
    pokemon_array.delete(pikachu)
when "Bulbasaur"
    player_pokemon = bulbasaur
    pokemon_array.delete(bulbasaur)
when "Charmander"
    player_pokemon = charmander
    pokemon_array.delete(charmander)
when "Squirtle"
    player_pokemon = squirtle
    pokemon_array.delete(squirtle)
end

ai_pokemon = randomize_ai_pokemon(pokemon_array)

curr_choice = player_pokemon.attacks
curr_attack = prompt.select("It's your turn young Master Trainer! Attack!", curr_choice)

