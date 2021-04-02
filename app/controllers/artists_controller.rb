class ArtistsController < ApplicationController


    def new 
        @artist = Artist.new(params[:id])
    end 

    def show 
        @artist = Artist.find(params[:id])
    end 

    def edit
		@artist = Artist.find(params[:id])
	end

    def create 
        @artist = Artist.new(params.require(:artist).permit!)
        @artist.save
        redirect_to artist_path(@artist)
    end 


    def update
        @artist = Artist.find(params[:id])
        @artist.update(params.require(:artist).permit!)
        redirect_to artist_path(@artist)
    end 
end
