class Song < ApplicationRecord
    #validations : title
    validates :title, presence: true
    validates :title, uniqueness: { scope: [:artist_name, :release_year] }

    #validations : released
    validates :released, inclusion: { in: [true, false] } 

    #validations : release_year
    validates :release_year, presence: true, if: :released
    validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, allow_nil: true

    #validations : artist_name
    validates :artist_name, presence: true
end
