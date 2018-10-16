class Game
  attr_accessor :name, :boardcase, :board

  def initialize(name1,name2)
    @name1 = name1
    @name2 = name2
  end
  def self.winning_condition(boardcase) #verifie si une condition gagnante a ete remplie#
  n=0
    if boardcase[0] == "X" && boardcase[1] == "X" && boardcase[2] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[3] == "X" && boardcase[4] == "X" && boardcase[5] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[6] == "X" && boardcase[7] == "X" && boardcase[8] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[0] == "X" && boardcase[4] == "X" && boardcase[8] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[2] == "X" && boardcase[4] == "X" && boardcase[6] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[0] == "X" && boardcase[3] == "X" && boardcase[6] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[1] == "X" && boardcase[4] == "X" && boardcase[7] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[2] == "X" && boardcase[5] == "X" && boardcase[8] == "X"
      puts "Joueur 1 vous avez gagné"
      return "win"
    elsif boardcase[0] == "O" && boardcase[1] == "O" && boardcase[2] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    elsif boardcase[2] == "O" && boardcase[5] == "O" && boardcase[8] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    elsif boardcase[0] == "O" && boardcase[4] == "O" && boardcase[8] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    elsif  boardcase[3] == "O" && boardcase[4] == "O" && boardcase[5] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    elsif  boardcase[0] == "O" && boardcase[3] == "O" && boardcase[6] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    elsif  boardcase[1] == "O" && boardcase[4] == "O" && boardcase[7] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    elsif  boardcase[6] == "O" && boardcase[7] == "O" && boardcase[8] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    elsif  boardcase[2] == "O" && boardcase[4] == "O" && boardcase[6] == "O"
      puts "Joueur 2 vous avez gagné"
      return "win"
    else
      puts "égalité"
    end
  end
end

class Board < Game
attr_accessor :boardcase
 def initialize
  boardcase = ["1","2","3","4","5","6","7","8","9"]
  n=0
  while n < 5 #Gestion des tours
      puts "#{boardcase[0]} | #{boardcase[1]} | #{boardcase[2]}"
      puts "========="
      puts "#{boardcase[3]} | #{boardcase[4]} | #{boardcase[5]}"
      puts "========="
      puts "#{boardcase[6]} | #{boardcase[7]} | #{boardcase[8]}"
      puts "================= tour#{n+=1} =================" #Gestion affichage
      puts "#{@name} choisi une case de 1 à 9 pour jouer :"
      valeur1 = gets.chomp.to_i #recupere les choix de cases du joueur 1
      valeur1 -= 1
      valeur1
      boardcase[valeur1] = "X"
      puts "#{@name} choisi une case de 1 à 9 pour jouer :"
      puts "#{boardcase[0]} | #{boardcase[1]} | #{boardcase[2]}"#Gestion affichage
      puts "========="
      puts "#{boardcase[3]} | #{boardcase[4]} | #{boardcase[5]}"
      puts "========="
      puts "#{boardcase[6]} | #{boardcase[7]} | #{boardcase[8]}"
      valeur2 = gets.chomp.to_i #recupere les choix de cases du joueur 2
      valeur2 -= 1
      valeur2
      boardcase[valeur2] = "O"
      if Game.winning_condition(boardcase) == "win" #appelle la verification gagnante et arrete le jeu si remplie
        break
      end
    end
  end
end

class Player < Game
  attr_accessor :name #Enregistre player name
  def initialize(name)
    @name = name
  end
end

puts "quel est le pseudo du Joueur1?"
p1 = Player.new(gets.chomp)
puts "quel est le pseudo du Joueur2?"
p2 = Player.new(gets.chomp)
puts "#{p1.name} vs #{p2.name}"
tableau1 = Board.new
jeu1 = Game.new(p1.name,p2.name)
