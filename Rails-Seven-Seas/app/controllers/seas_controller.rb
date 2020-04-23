class SeasController < ApplicationController
  #define your controller actions here
  def edit
  end

  def index
    @seas = Sea.all
  end

  def layout
  end

  def new
    
  end
  
  def show
  end

  def welcome
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
