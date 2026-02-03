class Player
    attr_accessor :name, :life_points
    
    def initialize(name)
        @name = name 
        @life_points = 10
    end

    def show_state
        puts "#{name} a #{life_points} points de vie"
    end

    def gets_damage(damage)
        @life_points -= damage
        show_state

        if @life_points <= 0
            puts ""
            puts "le joueur #{name} est mort"
        end
    end

    def compute_damage
        return rand(1..6)
    end

    def attacks(attacked)
        puts "#{self.name} attaque #{attacked.name}"
        a = compute_damage
        puts "il lui inflige #{a} dégats !"
        attacked.gets_damage(a)
    end



end


class HumanPlayer < Player
    attr_accessor :weapon_level
    
    def initialize(name)
        super
        @life_points = 100
        @weapon_level = 1  
    end

    def show_state
        puts ""
        puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level} "
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def upgrade_weapon
        new_weapon = rand(1..6)
        puts ""
        puts "tu as trouvé une arme de niveau #{new_weapon}"

        if new_weapon <= @weapon_level
             puts ""
            puts "dommage, cette arme n'est pas très utile"
        else
            @weapon_level = new_weapon
            puts ""
            puts "incroyable, l'upgrade de ZINZIN"
        end
    end

    def regain_life
        new_life = rand(1..6)
        heal = 0

        if new_life == 1
            puts ""
            puts "dommage, pas de heal"
        elsif new_life >= 2 && new_life <=5
            heal = 50
            @life_points += heal
            if @life_points > 100
                @life_points = 100
                puts ""
                puts "incroyable, un heal de 50 !"
            end
        else new_life = 6
            heal = 80
            @life_points += heal
            if @life_points > 100
                @life_points = 100
                puts ""
                puts "incroyable, un heal de 80 !"
            end
        end
    end

    
end