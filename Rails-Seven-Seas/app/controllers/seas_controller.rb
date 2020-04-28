class SeasController < ApplicationController
  #define your controller actions here
  def welcome 
    render :welcome 
  end 
  def index 
    @seas = Sea.all 
    render :index 
  end 
  def new 
    @sea = Sea.new 
  end 
  def create 
    @sea = Sea.create 
    redirect_to seas_path(@sea) 
  end 
  def show 
    @sea = Sea.find(params[:id]) 
  end 
  def edit 
    @sea = Sea.find(params[:id]) 
  end 
  def update
    @sea = Sea.find(params[:id]) 
    @sea.update(sea_params)   
    redirect_to seas_path(@sea)
  end 
  def delete 
    @sea = Sea.find(params[:id]) 
    @sea.destroy 
    redirect_to seas_path
  end 
  private
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end
end 

