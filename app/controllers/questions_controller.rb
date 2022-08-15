class QuestionsController < ApplicationController
  def ask
    @answer
  end

  def answer
    if params[:answer] == 'I am going to work'
      @coach = 'Great!'
    elsif params[:answer][-1] == '?'
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
