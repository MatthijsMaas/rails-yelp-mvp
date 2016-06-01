class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update]

  def index         # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show          # GET /restaurants/:id
    @review = Review.new
  end

  def new           # GET /restaurants/new
   @restaurant = Restaurant.new
 end

  def create        # POST /restaurants
    @restaurant_params = restaurant_params
    @restaurant_params[:category] = @restaurant_params[:category].to_i
    @restaurant = Restaurant.new(@restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
   # @restaurant.update(params[:restaurant])
   if @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  else
    render :edit
  end

end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end
def find_restaurant
  @restaurant = Restaurant.find(params[:id])
end


end
