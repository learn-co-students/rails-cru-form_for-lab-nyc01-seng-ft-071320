class Artist < ApplicationRecord
    has_many :songs
    has_many :genrs, through: :songs
end
