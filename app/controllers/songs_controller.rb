class SongsController < ApplicationController

    def index 
        @songs = Song.all
    end 

    def new 
        @song = Song.new(params[:id])
    end 

    def show 
        @song = Song.find(params[:id])
    end 

    def edit
		@song = Song.find(params[:id])
	end

    def create 
        @song = Song.new(params.require(:song).permit!)
        @song.save
        redirect_to song_path(@song)
    end 


    def update
        @song = Song.find(params[:id])
        @song.update(params.require(:song).permit!)
        redirect_to song_path(@song)
    end 
end
