class QuestionsController < ApplicationController
  def index
  end

  def ask
  end

  def answer
    @response = ''
    @question = params[:answer]
      if @question == "I am going to work"
        @response = "Great !"
      elsif @question.split("").include?("?")
       @response = "Silly question, get dressed and go to work!."
      else
        @response = "I dont care"
      end
  end
end
