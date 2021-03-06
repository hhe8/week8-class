class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :update, :edit, :destroy]

  def find_movie
    @movie = Movie.find(params["id"])
  end

  def update
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to root_url
  end

  def edit
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.title = params["title"]
    @movie.year = params["year"]
    @movie.director_id = params["director_id"]

    if @movie.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def index
    if params["keyword"].present?
      k = params["keyword"].strip
      @movies = Movie.where("title LIKE '%#{k}%'")
    else
      @movies = Movie.all
    end

    respond_to do |format|
      format.html do
        render 'index'
      end
      format.json do
        render :json => @movies
      end
      format.xml do
        render :xml => @movies
      end
    end

  end

  def destroy
    @movie.delete
    redirect_to "/movies"
  end

  def show
    session["history"] ||= []
    session["history"] << @movie.id
  end

end
