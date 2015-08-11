class DirectorsController < ApplicationController

  def index
    @directors = Director.order("name asc")
  end

  def show
    @director = Director.find_by(:id => params["id"])
  end

end
