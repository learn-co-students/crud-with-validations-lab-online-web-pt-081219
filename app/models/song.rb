class Song < ApplicationRecord
    validates :title, :artist_name, presence: true 
    validates :released, exclusion: { in: [nil] }
    validates :title, uniqueness: { scope: [:release_year, :artist_name]}
 

    # released must be true or false 
    # release_year optional if released = false
    # release_year cannot be blank if released = true 
    # release_year must be less than or equal to current year
    

end
