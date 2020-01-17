class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: {scope: :release_year}
  validates :release_year, numericality: {less_than_or_equal_to:2020}, if: :released
end
