class ArtistsController < ApplicationController
   
   # /artists    shows all the artists
   def index
      @artists = Artist.all
   end
   
   # show
   # new
   # create
   # edit
   # update
   # destroy
   def show
      @artist = Artist.find(params[:id])
   end
   
   def new
      @artist = Artist.new
   end
   
   def create
      @artist = Artist.new(artist_params)
      
      if @artist.save
         redirect_to artists_path
      else
         render 'new'
      end
   end
   
   def edit
      @artist = Artist.find(params[:id])
      
   end
   
   def update
      @artist = Artist.find(params[:id])
      
      
      
      if @artist.update(artist_params)
         redirect_to artists_path
      else
         render 'new'
      end
         
   end
   
   def destroy
      @artist= Artist.find(params[:id])
      
      @artist.destroy
      redirect_to artists_path
   end
    
    private 
    
    def artist_params
       params.require(:artist).permit(:name)
    end
    
    
end