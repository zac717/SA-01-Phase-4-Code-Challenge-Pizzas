class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response


  def index
    render json: Restaurant.all
  end

  def show
   render json:find_restaurant, Serializer: RestaurantWithPizzasSerializer
  end

  def destroy
   restaurant =Restaurant.find_restaurant.destroy
   restaurant.destroy
    head :no_content
  end

  private

  def restaurant_params
    params.permit(:name, :address)
  end

  def find_restaurant
    Restaurant.find(params[:id])
  end

  def record_not_found_response(exception)
    render json: {error: "Restaurant not found"}, status: :not_found
  end
end
