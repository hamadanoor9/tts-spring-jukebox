class SongsController < ApplicationController
  before_action :collect_artists, only: [:new, :create, :edit, :update]
  
  def index
    @songs = Song.all
  end
  
  def show
    
    @song = Song.find(params["id"])
  end
  
  def new
    @song = Song.new
    @artists_arrays = Artist.all.map { |a| [a.name, a.id] }
  end
  
  def create
    @song = Song.create(song_params)
     @artists_arrays = Artist.all.map { |a| [a.name, a.id] }
    
    if @song.persisted?
      redirect_to songs_path
    else
      render 'new'
    end
  end
  
  def edit
    @song = Song.find(params["id"]
    )
  end
  
  def update
    @song = Song.find(params["id"])
    
    if @song.update(song_params)
      redirect_to songs_path
      
    else
      render 'edit'
    end
      
  end
  
  def destroy
    @song = Song.find(params["id"])
    
    @song.destroy
    
    redirect_to songs_path
  end

  
  
  
  private
  
  def song_params
    params.require(:song).permit(:name, :duration, :artist_id)
  end
  
  def collect_artists
    @artists_arrays = Artist.all.map { |a| [a.name, a.id] }

  end 

end
