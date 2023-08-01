class Question
  attr_accessor :number1, :number2, :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def ask_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer(answer)
    if @answer == answer
      puts "YES! You are correct."
      return true
    else
      puts "Seriously? No!"
      return false
    end
  end
end
