class Song < ApplicationRecord
    validates :title, presence: true
    validate :uniqueness_of_title_artist_year, on: :create
    validates :released, inclusion: { in: [ true, false ] }
    validate :optional_release_year
    validates :artist_name, presence: true

    def uniqueness_of_title_artist_year
        Song.all.each do |song|
        if title == song.title && release_year == song.release_year && artist_name == song.artist_name
            self.errors.add(:title, "Song title cannot be repeated by the same artist in the same year.")
        end
        end
    end

    def optional_release_year
        if released && !release_year
        self.errors.add(:release_year, "Song has been released. Please enter Release Year.")
        elsif released && release_year > Date.current.year
        self.errors.add(:release_year, "Release Year must be the current or previous years.")
        end
    end
end
