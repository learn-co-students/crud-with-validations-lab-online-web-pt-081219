class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: { 
        scope: [:release_year, :artist_name], 
        message: "cannot repeat same song by same artist released in the same year" }
        # title cannot be repeated by the same artist in the same year
    validates :released, inclusion: { in: [true, false] }
    # grouping conditional validations 
    # optional if release is false/must not be blank if released is true/must be less than or equal to the current year
    with_options if: :released do |song|
        song.validates :release_year, presence: true
        song.validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }
    end

end
