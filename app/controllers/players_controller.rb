class PlayersController < ApplicationController
  def find_player
    players_list = RestClient.get("http://data.nba.net/10s/prod/v1/#{Date.current.year}/players.json")
    # byebug
    render json: players_list
  end
end
