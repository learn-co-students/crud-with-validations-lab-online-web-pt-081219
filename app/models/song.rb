class Song < ApplicationRecord
    # include ActiveModel::Validations
    # validates_with ReleaseYearValidator

    validates :title, presence: true
    validates :artist_name, presence: true
    validates :title, uniqueness: { scope: :release_year }
    validates :released, inclusion: { in: [true, false]}
    validates :release_year, presence: true, numericality: { less_than_or_equal_to: Date.today.year }, if: :released?
end
