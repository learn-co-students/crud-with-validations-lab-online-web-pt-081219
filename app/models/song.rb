class Song < ApplicationRecord
	validates :title, presence: true
	validates :title, uniqueness: { scope: [:artist_name, :release_year]}
	validates :release_year, presence: true, if: :released
	validate :release_date_cannot_be_in_the_future

	def release_date_cannot_be_in_the_future
		#binding.pry
		if release_year.present? && release_year > Date.today.year
           errors.add(:release_year, "cannot be in the future")
       end

	end
end

