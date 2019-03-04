class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.upcase == @question
      @answer = coach_answer_enhanced(@question)
    else
      @answer = coach_answer(@question)
    end
  end

def coach_answer(your_message)
  if your_message.include? "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message == your_message.upcase
    return "Great, I can feel your motivation! "
  else
    return ""
  end
end

end
