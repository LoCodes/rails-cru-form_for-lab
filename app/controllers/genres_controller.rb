class GenresController < ApplicationController


    def new 
        @genre = Genre.new(params[:id])
    end 

    def show 
        @genre = Genre.find(params[:id])
    end 

    def edit 
        @genre = Genre.find(params[:id])
    end 

    def create 
        @genre = Genre.new(params.require(:genre).permit!)
        @genre.save

        redirect_to genre_path(@genre)
    end 


    def update
        @genre = Genre.find(params[:id])
        @genre.update(params.require(:genre).permit!)
        redirect_to genre_path(@genre)
    end 
end
