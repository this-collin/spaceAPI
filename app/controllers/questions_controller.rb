class QuestionsController < ApplicationController

  def easy
    @questions = Question.where(difficulty: "easy")
    render json: @questions, status: :ok
  end

  def medium
    @questions = Question.where(difficulty: "medium")
    render json: @questions, status: :ok
  end

  def hard
    @questions = Question.where(difficulty: "hard")
    render json: @questions, status: :ok
  end


end