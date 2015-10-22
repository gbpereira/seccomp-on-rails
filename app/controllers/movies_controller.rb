class MoviesController < ApplicationController
  before_filter :set_movie,
                only: [:edit, :update, :show, :destroy]
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def edit; end
  def show; end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :description, :year)
  end

  def set_movie
    @movie = Movie.find_by(id: params[:id])
  end
end
