class Api::V1::MoviesController < ApplicationController

    def index
        movies = Movie.all

        render json: MovieSerializer.new(movies), status: 200
    end

    def show
        movie = Movie.find(params[:id])

        render json: MovieSerializer.new(movie), status: 200
    end

    #If @movie.save, render json, else...
    def create
        movie = Movie.create(movie_params)

        render json: MovieSerializer.new(movie), status: 200
    end

    #If @movie.update, render json, else...
    def update
        movie = Movie.find(params[:id])
        movie.update(movie_params)

        render json: MovieSerializer.new(movie), status: 200
    end

    def destroy
        movie = Movie.find(params[:id])
        movie.delete

        render json: {movieId: movie.id}
    end

    private
        def movie_params
            params.require(:movie).permit(:title, :year, :rating, :description, :genre_id)
        end

end
