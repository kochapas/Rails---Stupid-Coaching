class QuestionsController < ApplicationController
  def ask

  end

  def answer
    if params["question"] == false || params["question"].length <= 0
      params["question"] = "..."
      @answer = "Say something!"
    elsif params["question"].downcase == "i am going to work"
      @answer = "Great!" 
    elsif params["question"][-1] == "?"
      @answer = "Silly question, get dressed and go to work!" 
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
