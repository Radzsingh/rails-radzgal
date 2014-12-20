class ImagesController < ApplicationController
def index
  @images=Image.all
  
end
def create
   @album=Album.find(params[:album_id])
   @uattachment = @album.images.new(image_par)
   
  if @uattachment.save
    redirect_to user_album_images_path
  else
    redirect_to root_url
  end
end

private

def image_par

    params.require(:image).permit(:album_id=>params[:album_id],:imageval => params[:image][:imageval] )
    
    
  end
end
