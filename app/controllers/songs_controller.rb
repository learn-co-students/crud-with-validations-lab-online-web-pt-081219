class SongsController < ApplicationController
    def index 
        @songs = Song.all
    end
    
    def show
      @song = Song.find(params[:id])
    end
  
    def new
      @song = Song.new
    end
  
    def create
      @song = Song.new(song_params)

      puts "attempting to create #{@song.title}"
  
      if @song.valid?
        puts "success"
        @song.save

        puts @song.save
  
        redirect_to song_path(@song)
      else
        puts "failure"
        render :new
      end
    end

    def edit
      @song = Song.find(params[:id])
    end

    def update
      @song = Song.find(params[:id])

      @song.update(song_params)

      if @song.valid?
        @song.save

        redirect_to song_path(@song)
      else
        render :edit 
      end
    end

    def destroy
      @song = Song.find(params[:id])

      @song.delete

      redirect_to songs_path
    end
  
    private
  
    def song_params
      params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end
  end
  