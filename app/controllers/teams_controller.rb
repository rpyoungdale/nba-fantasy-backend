class TeamsController < ApplicationController
  skip_before_action :authorized, only: [:game_scores]

  def game_scores
    games = RestClient.get("http://data.nba.net/10s/prod/v2/#{params[:current_date]}/scoreboard.json")
    # byebug
    render json: games
  end
end
