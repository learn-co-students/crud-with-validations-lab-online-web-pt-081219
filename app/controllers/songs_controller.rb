class SongsController < ApplicationController
    before_action :set_song, only: [ :show, :edit, :update]

    def index 
        @songs = Song.all
    end

    def new
    end
    
    def create
        @song = Song.new(song_params)
        if @song.save
            redirect_to songs_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    def delete
    end

    private

    def set_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(
            :title, :released, :release_year, :artist_name, :genre
            )
    end
end