class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    
    def show
        find_song
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(params_path(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def edit
        find_song
    end

    def update
        @song = find_song
        @song.update(params_path(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    private
    def find_song
        @song = Song.find(params[:id])
    end
    
    def params_path(*args)
        params.require(:song).permit(*args)
    end
end
