class Song < ApplicationRecord
    validates :title, presence: true
    validates_uniqueness_of :title, scope: [:artist_name, :release_year], message: 'cannot be repeated by the same artist in the same year'
    validates :released, inclusion: { in: [true, false] }
    validates :artist_name, presence: true
    validates :release_year, presence: true, if: :released?
    validates :release_year, numericality: { less_than_or_equal_to: Time.now.year }, if: :released?

    def released?
        released
    end

end