class ArtistsController < ApplicationController
    def index
        @artists.all = Artist.all
    end
    
    def show
        find_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(params_path(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def edit
        find_artist
    end

    def update
        @artist = find_artist
        @artist.update(params_path(:name, :bio))
        redirect_to artist_path(@artist)
    end

    private
    def find_artist
        @artist = Artist.find(params[:id])
    end
    
    def params_path(*args)
        params.require(:artist).permit(*args)
    end
end
