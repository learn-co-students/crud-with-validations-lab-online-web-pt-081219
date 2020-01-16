class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: [ :artist_name, :released_year ]
    validates :released, inclusion: { in: [ true, false ] }
    validates :release_year, presence: true, numericality: { less_than_or_equal_to: Time.new.year }, if: :released
    validates :artist_name, presence: true
end
