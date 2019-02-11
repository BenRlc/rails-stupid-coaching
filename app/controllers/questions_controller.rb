# frozen_string_literal: true

# questions controller
class QuestionsController < ActionController::Base
  def ask
    render(:layout => "layouts/application")
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.to_s.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end

    render(:layout => "layouts/application")
  end
end
