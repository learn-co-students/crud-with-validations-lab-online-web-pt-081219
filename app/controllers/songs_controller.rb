class SongsController < ApplicationController
    before_action :set_song!, only: [:show, :edit, :update]

    def index
        @songs = Song.all
    end

    def show
    end

    def new
        @song = Song.new
    end

    def edit
    end
    
    private
    
    def song_params
        params.permit()
    end
    def set_song!
        @song = Song.find(params[:id])
    end

end