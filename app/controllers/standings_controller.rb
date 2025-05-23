class StandingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @standings = Standing.all
    render json: @standings, status: :ok
  end

  def list
    easy_standings = []
    medium_standings = []
    hard_standings = []
    Standing.all.each do |standing|
      if standing.difficulty == "easy"
        easy_standings << standing
      elsif standing.difficulty == "medium"
        medium_standings << standing
      elsif standing.difficulty == "hard"
        hard_standings << standing
      end
    end

    easy_standings.sort_by! { |standing| -standing.money_earned }
    medium_standings.sort_by! { |standing| -standing.money_earned }
    hard_standings.sort_by! { |standing| -standing.money_earned }

    render json: {
      easy_standings: easy_standings,
      medium_standings: medium_standings,
      hard_standings: hard_standings
    }, status: :ok
  end

  def create
    @standing = Standing.new(standing_params)
    if @standing.save
      render json: @standing, status: :created
    else
      render json: @standing.errors, status: :unprocessable_entity
    end

  end

  def standing_params
    params.require(:standing).permit(:name, :percent_correct, :money_earned, :difficulty)
  end

end