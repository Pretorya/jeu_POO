require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

puts ""
puts "Quel est ton nom, guerrier !"
player_name = gets.chomp
player1 = HumanPlayer.new(player_name)

puts ""
puts "Tes adversaires sont : José et Josiane !"

ennemies = []

player2 = Player.new("José")
ennemies << player2

player3 = Player.new("josiane")
ennemies << player3

order = true
valid_inputs = ["a", "s", "0", "1"]

while player1.life_points > 0 && player2.life_points > 0 || player3.life_points > 0 do

    puts "-------------"
    puts "Voici l'état de chaque joueur :"
    player1.show_state
    player2.show_state
    player3.show_state
    puts "-------------"
    puts ""
    puts "-------------"
    puts "Quelle action veux-tu effectuer ?"
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner"
    puts "attaquer un joueur en vue :"
    puts "0 - Josiane a 10 points de vie"
    puts "1 - José a 10 points de vie"
    puts "-------------"
    puts ""

    input = gets.chomp

    while !valid_inputs.include?(input)
        puts ""
        puts "Entrée invalide, recommence :"
        input = gets.chomp
    end

    if input == "a"
        puts""
        player1.upgrade_weapon
    elsif input == "s"
        puts""
        player1.regain_life
    elsif input == "0"
        puts""
        player1.attacks(player2)
    else input == "1"
        puts""
        player1.attacks(player3)
    end

    ennemies.each do |ennemie|
        if ennemie.life_points > 0
            ennemie.attacks(player1)
        end
    end 
end

if player1.life_points > 0
        puts "-------------"
        puts "Bravo, tu as gagné"
        
    else
        puts "-------------"
        puts "Loser, comment t'as réussi à perdre contre deux bots ..."
end

