class SongsController < ApplicationController
    def index 
        @songs = Song.all 
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new 
    end

    def create
        song = Song.create(song_params)
        redirect_to song_path(song)
    end 

    def edit
        find_song
    end

    def update 
    @song = find_song.update(song_params)
    redirect_to song_path 
    end

end


private 

def song_params
    params.require(:song).permit(:name)
end

def find_song
    @song = Song.find(params[:id])
end