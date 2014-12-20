class AlbumsController < ApplicationController
def new
end
def index
  
 @albums = Album.where("user_id=?",current_user.id)
 
end
def show
  @image=Image.new
  @album = current_user.albums.find(params[:id])
end
def create
   
   
   @albums = Album.all
   @album = current_user.albums.create(comment_params)
   if @album.save
     redirect_to user_albums_path,:alert=> "succesfully created!"
  else
    render 'new'
  end
  
  
   
   
      end
      def edit
        
        @album=current_user.albums.find(params[:id])
        
      end
      def update
        
  @album = current_user.albums.find(params[:id])
 
  if @album.update(album1_params)
    redirect_to user_albums_path
  else
    render 'edit'
  end
end

def destroy
  @album = current_user.albums.find(params[:id])
  @album.destroy
 
  redirect_to user_albums_path
end
 
private
  def album1_params
    params.require(:album).permit(:album_name, :user_id)
  end
 

    def comment_params
      params.require(:album).permit(:album_name,:user_id)
    end
end
