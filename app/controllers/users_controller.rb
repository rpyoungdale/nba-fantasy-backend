class UsersController < ApplicationController
  skip_before_action :authorized, only: [:all_teams, :create]

  def all_teams
    # byebug
    teams_list = RestClient.get('http://data.nba.net/10s/prod/v2/2018/teams.json')
    render json: teams_list
  end

  def show_user
    # byebug
    render json: current_user
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :accepted
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :username, :password)
  end

end
