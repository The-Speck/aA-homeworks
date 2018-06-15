class AlbumsController < ApplicationController
  
  def create
    album = Album.new(album_params)
    
    switch_record(album)
    
    if album.save
      redirect_to band_url(album_params[:band_id])
    else
      render :new
    end 
  end
  
  def new
    @album = Album.new
    
    render :new
  end
  
  def edit
    @album = Album.find(params[:id])
    
    render :edit
  end
  
  def show 
    @album = Album.find(params[:id])
    
    render :show
  end
  
  def update
    album = Album.find(params[:id])
    # byebug
    switch_record(album)
    # byebug
    if album.update_attributes(album_params)
      redirect_to album_url(params[:id])
    else  
      render :edit
    end
  end
  
  def destroy
    album = Album.find(params[:id])
    album.destroy!
    redirect_to band_url(album.band_id)
  end
    
  private
  
  def switch_record(album)
    album.live, album.studio = true, false if params[:album][:recorded_in] == "live"
  end
  
  def album_params
    params.require(:album).permit(:title, :band_id, :date)
  end
end