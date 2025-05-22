class QuestionsController < ApplicationController

  def easy
    @questions = Question.where(difficulty: "easy").sample(5)
    render json: @questions, status: :ok
  end

  def medium
    @questions = Question.where(difficulty: "medium").sample(10)
    render json: @questions, status: :ok
  end

  def hard
    @questions = Question.where(difficulty: "hard").sample(5)
    render json: @questions, status: :ok
  end


end