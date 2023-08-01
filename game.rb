require_relative 'player'
require_relative 'question'

class Game
  def start
    # create 2 players
    player1, player2 = Player.new_player

    while (player1.lives > 0 && player2.lives > 0)
      if player1.turn
        print "Player 1: "
      else
        print "Player 2: "
      end

      question = Question.new
      puts question.ask_question

      answer = gets.chomp.to_i

      if !question.check_answer(answer)
        if player1.turn
          player1.change_life
        else
          player2.change_life
        end
      end

      puts "P1: #{player1.lives}/3, P2: #{player2.lives}/3"
      puts "-----NEW TURN-----"

      # turn tracker switch
      player1.turn = !player1.turn
      player2.turn = !player2.turn
    end

    if player1.lives == 0
      puts "Player 2 wins with a score of #{player2.lives}/3"
    elsif player2.lives == 0
      puts "Player 1 wins with a score of #{player1.lives}/3"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
