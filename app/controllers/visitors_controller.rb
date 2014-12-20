class VisitorsController < ApplicationController

def index
      @user = User.all
end

def show
  
    @album= @user.albums.build
  

    
 
end
end
