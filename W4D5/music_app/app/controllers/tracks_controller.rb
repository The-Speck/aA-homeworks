class TracksController < ApplicationController

  def create
    track = Track.new(tracks_params)
    
    if track.save
      redirect_to 
    else
      render edit_album_url(params[:album][:id])
    end 
  end
  
  # def new
  #   @track = Track.new
  # 
  #   render :new
  # end
  
  def edit
    @track = Track.find(params[:id])
    
    render :edit
  end
  
  def show 
    @track = Track.find(params[:id])
    
    render :show
  end
  
  def update
    track = Track.find(params[:id])

    if track.update_attributes(tracks_params)
      redirect_to album_url(params[:id])
    else  
      render :edit
    end
  end
  
  def destroy
    track = Track.find(params[:id])
    track.destroy!
    redirect_to album_url(track.album_id)
  end
    
  private

  def tracks_params
    params.require(:track).permit(:title, :album_id, :date)
  end
end