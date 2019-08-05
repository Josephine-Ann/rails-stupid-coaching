class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:message]
    if @question.include?("?")
      @answer = 'Silly question! Get dressed and go back to work!'
    elsif @question == @question.upcase && @question != 'I am going to work right now!'
      @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif @question != 'I am going to work right now!'
      @answer = "I don't care, get dressed and go to work!"
    else
      @answer = 'Great! Por fin!'
    end
  end
end
