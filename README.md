🗡️ ILS VEULENT TOUS MA POO

A command-line fighting game written in Ruby using Object-Oriented Programming (OOP).
The player fights against two computer-controlled enemies in a turn-based combat system.
The goal is simple: be the last survivor.

🎯 Game Objective

You play as a HumanPlayer and must survive against two enemies:

José

Josiane

Each turn, you can choose to:

search for a better weapon,

heal yourself,

or attack one of the enemies.

After your action, all living enemies will attack you.

🧩 Features

✔️ Turn-based combat system

✔️ Life points management

✔️ Weapon level system

✔️ Random damage and healing

✔️ AI-controlled enemies

✔️ User input validation

✔️ Clear terminal interface

✔️ Object-Oriented design (inheritance)

🧑‍💻 Main Classes
Player

Represents a basic enemy player.

Methods:

show_state → displays life points

attacks(player) → attacks another player

compute_damage → calculates damage (1 to 6)

gets_damage(damage) → reduces life points

Default life points: 10

HumanPlayer (inherits from Player)

Additional attribute:

weapon_level

Special abilities:

upgrade_weapon → search for a better weapon

regain_life → heal yourself

higher damage based on weapon level

Initial life points: 100

🎮 How to Play

At the beginning of the game, you enter your player name.

Each turn, choose one action:

a - search for a better weapon  
s - heal yourself  
0 - attack Josiane  
1 - attack José  


If an invalid input is entered, the game will ask you to try again.

⚙️ Installation
Requirements

Ruby (version 3.x recommended)

Bundler

Install dependencies:

bundle install

▶️ Run the Game

In the project folder, run:

ruby app.rb


or:

bundle exec ruby app.rb

🏁 Win / Lose Conditions

✅ You win if your life points are above 0 and all enemies are defeated.

❌ You lose if your player dies.

End messages:

Victory:

Bravo, tu as gagné


Defeat:

Loser, how did you manage to lose against two bots ...

🧠 Concepts Used

Object-Oriented Programming (OOP)

Inheritance (HumanPlayer < Player)

Loops (while, each)

Conditionals (if / elsif / else)

Arrays (enemies)

User input (gets.chomp)

Random values (rand)

📁 Project Structure (example)
jeu_POO/
│
├── app.rb
├── Gemfile
├── lib/
│   ├── player.rb
│   └── game.rb
└── README.md

🚀 Possible Improvements

Add more enemies

Add experience (XP) system

Add potions

Add a boss fight

Add colors in terminal output

Add a main menu

Add multiplayer mode

👨‍🎓 Author

Project created as part of learning Ruby and Object-Oriented Programming.

If you want, I can also give you:
✅ a more professional GitHub-style README
✅ a shorter version
✅ a more fun version
✅ a version with emojis and formatting
✅ all versions

Just say which one you want 😄