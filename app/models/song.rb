class Song < ApplicationRecord
    validates :title, :artist_name, presence: true 
    validates :released, exclusion: { in: [nil] }
    validates :title, uniqueness: { scope: [:release_year, :artist_name]}
    validates :release_year, presence: true, if: :released
    validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, if: :released 


end
