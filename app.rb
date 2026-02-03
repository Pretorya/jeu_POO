require 'bundler'
Bundler.require
require 'pry'

require_relative 'lib/game'
require_relative 'lib/player'

puts "A ma droite : Josiane !"
player1 = Player.new("Josiane")

puts ""

puts "A ma gauche : José !"
player2 = Player.new("José")

puts ""

order = true

while player1.life_points > 0 && player2.life_points > 0 do

    puts "Voici l'état de chaque joueur :"
    
    player1.show_state
    player2.show_state
    puts ""

    puts "Passons à la phase d'attaque :"

    if order == true
        player1.attacks(player2)
        puts ""
        order = false
    else
        player2.attacks(player1)
        puts ""
        order = true
    end
end
    
