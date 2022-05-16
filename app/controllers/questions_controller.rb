class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:question]
    @answer = if @ask == 'I am going to work'
                return ''
              elsif @ask.last == '?'
                return 'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
