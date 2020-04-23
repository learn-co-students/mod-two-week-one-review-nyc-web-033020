class SeasController < ApplicationController
  #define your controller actions here

  def index
    @seas = Sea.all
  end

  def new
    # @sea = Sea.new(sea_params)
    @sea = Sea.new
  end

  def create
    @sea = Sea.create(sea_params)

    # redirect_to 'show.html'
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def edit

  end

  def update

  end



#   /photos/:id	GET	show
# /photos/:id/edit	GET	edit
# /photos/:id	PATCH/PUT	update
# /photos/:id	DELETE	destroy

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
