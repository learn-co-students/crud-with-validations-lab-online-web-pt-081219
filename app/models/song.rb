class Song < ApplicationRecord
    validates :title, presence: true
    validates_uniqueness_of :title, scope: [:artist_name, :release_year]
    validates :release_year, presence: true, only: :released?
    validates :release_year, numericality: { less_than_or_equal_to: Time.now.year }
end