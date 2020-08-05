class Song < ApplicationRecord
    def artist
        Artist.find(self.artist_id)
    end
    
    def genre
        Genre.find(self.genre_id)
    end
end
