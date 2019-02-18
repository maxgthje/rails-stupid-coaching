class QuestionsController < ApplicationController
  def ask
    # get input from view
  end

  def answer
    @input = params[:question]
    if @input.include?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif @input == 'Silly question, get dressed and go to work!'
      @answer = 'Great'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# read questions from params and compute and instance variable @answer for the view to display
