class BandsController < ApplicationController
  def index
    render :index
  end
  
  def create
    band = Band.new(name: band_params[:name])
    
    if band.save
      redirect_to bands_url
    else
      render :new
    end 
  end
  
  def new
    @band = Band.new
    
    render :new
  end
  
  def edit
    @band = Band.find(params[:id])
    
    render :edit
  end
  
  def show 
    @band = Band.find(params[:id])
    
    render :show
  end
  
  def update 
    # byebug
    band = Band.find(params[:id])
    
    if band.update_attributes(band_params)
      redirect_to bands_url
    else  
      render show
    end
  end
  
  def destroy
    band = Band.find(params[:id])
    band.destroy!
    redirect_to bands_url
  end
    
  private
  
  def band_params
    params.require(:band).permit(:name)
  end
  
end