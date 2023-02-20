# Defined Class
class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    message = "I'm going to work!"
    @answer = if message == @question || message.upcase == @question
                'Great!'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
