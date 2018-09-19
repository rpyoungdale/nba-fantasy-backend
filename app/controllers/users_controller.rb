class UsersController < ApplicationController
  def all_teams
    teams_list = RestClient.get('http://data.nba.net/10s/prod/v2/2018/teams.json')
    render json: teams_list
  end
end
