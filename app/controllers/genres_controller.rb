class GenresController < ApplicationController
    def index
        @genres.all = Genre.all
    end
    
    def show
        find_genre
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(params_path(:name))
        redirect_to genre_path(@genre)
    end

    def edit
        find_genre
    end

    def update
        @genre = find_genre
        @genre.update(params_path(:name))
        redirect_to genre_path(@genre)
    end

    private
    def find_genre
        @genre = Genre.find(params[:id])
    end
    
    def params_path(*args)
        params.require(:genre).permit(*args)
    end
end
