class Api::V1::MoviesController < ApplicationController

    def index
        
        movies = Movie.all
        
        # options = {
        #     include: [:genre]
        # }

        # render json: MovieSerializer.new(movies, options).serialized_json, status: 200
        render json: MovieSerializer.new(movies), status: 200
    end

    def show
        movie = Movie.find(params[:id])

        render json: MovieSerializer.new(movie), status: 200
    end

    def new
        movie = Movie.new
    end

    #If @movie.save, render json, else...
    def create
        movie = Movie.create(movie_params)
        # if movie.save
        #     render json: MovieSerializer.new(movie), status: 200
        # else
        #     render json: {status: "error", code: 400, message: "Form inputs cannot be blank" } 
        # end
        # render json: MovieSerializer.new(movie, options).serialized_json, status: 200
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

        # render json: {movieId: movie.id}
        render json: MovieSerializer.new(movies), status: 200
    end

    private
        def movie_params
            params.require(:movie).permit(:title, :year, :rating, :description, genre_attributes: [:name])
        end

end
