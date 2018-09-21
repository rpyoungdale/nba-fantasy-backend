class TeamsController < ApplicationController
  skip_before_action :authorized, only: [:game_scores]

  def game_scores
    #{params[:current_date]}
    games = RestClient.get("http://data.nba.net/10s/prod/v2/20181017/scoreboard.json")
    # byebug
    render json: games
  end
end
