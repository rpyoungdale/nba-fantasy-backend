class GamesController < ApplicationController
  skip_before_action :authorized, only: [:boxscore]

  def boxscore
    boxscore = RestClient.get("http://data.nba.net/10s/prod/v1/#{params[:game_date]}/#{params[:game_id]}_boxscore.json")
    render json: boxscore
  end
end
