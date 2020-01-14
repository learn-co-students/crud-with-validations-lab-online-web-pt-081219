class Song < ApplicationRecord
    validates :title, presence: true
    validates :genre, presence: true
    validates :title, uniqueness: true
    validates :artist_name, presence: true
    validates :released, inclusion: { in: [true, false] }
    # validates :release_year, presence: true, if: :released?
    # validates :release_year, numericality: {less_than_or_equal_to: Date.today.year}

    with_options if: :released? do |s|
        s.validates :release_year, presence: true
        s.validates :release_year, numericality: {less_than_or_equal_to: Date.today.year}
    end


    def released?
        released
    end
end
