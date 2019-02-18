class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @reply = params[:question]

    if @reply == 'I am going to work'
      @output = 'Great!'
    elsif @reply.include?('?')
      @output = 'Silly question, get dressed and go to work!'
    else
      @output = "I don't care, get dressed and go to work!"
    end
  end
end
