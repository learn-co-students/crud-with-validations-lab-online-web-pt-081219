class Song < ApplicationRecord

    validates :title, presence: true, uniqueness: {scope: :release_year}
    validates :released, exclusion: {in: [nil]}
    validates :release_year, presence: true, numericality: {less_than: Date.today.year},  if: :released? 
    validates :artist_name, presence: true

end
