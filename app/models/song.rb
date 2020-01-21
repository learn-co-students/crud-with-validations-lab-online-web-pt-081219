class Song < ApplicationRecord
    validates :title, presence: true

    validates :artist_name, presence: true

    validates :title, uniqueness: { scope: :release_year }

    validates :released, inclusion: { in: [true, false], message: "Must be true or false." }

    # validates :release_year, presence: true, if: :has_been_released?

    # validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, if :has_been_released?

    # def has_been_released?
    #     released
    # end
    
end
