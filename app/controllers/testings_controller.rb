class TestingsController < ApplicationController
  def test
    byebug
    render json: JSON.parse('{ "name":"John", "age":30, "city":"New York"}')
  end
end
