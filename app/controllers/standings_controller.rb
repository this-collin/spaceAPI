class StandingsController < ApplicationController

  def index
    @standings = Standing.all
    render json: @standings, status: :ok
  end

  def list
    # easy_standings = Standing.where(difficulty: "easy")
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
    render json: {
      easy_standings: easy_standings,
      medium_standings: medium_standings,
      hard_standings: hard_standings
    }, status: :ok
  end
end