class RidesController < ApplicationController

  def new
  end

  def create
    # @user = User.find(session[:user_id])
    # @attraction = Attraction.find(params[:attraction_id])
    @ride = Ride.new(user_id: session[:user_id], attraction_id: params[:attraction_id])
    flash[:notice] = "#{@ride.take_ride}"

    # binding.pry

    redirect_to user_path(session[:user_id])
  end

end
