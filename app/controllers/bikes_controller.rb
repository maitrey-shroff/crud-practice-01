class BikesController < ApplicationController

  def index
    @bicycles = Bicycle.all
  end

  def show
    @bike = Bicycle.find_by(id: params[:id])
  end

  def new

  end

  def create
    @bike = Bicycle.new({type_of_bike: params[:type_of_bike], size_of_bike: params[:size_of_bike]})
    @bike.save

    redirect_to "/bikes"

  end

  def edit
    @bike = Bicycle.find_by(id: params[:id])
  end

  def update
    bike = Bicycle.find_by(id: params[:id])
    bike.assign_attributes({type_of_bike: params[:type_of_bike], size_of_bike: params[:size_of_bike]})
    bike.save

    redirect_to "/bikes/#{bike.id}"
  end

  def destroy
    bike = Bicycle.find_by(id: params[:id])
    bike.destroy

    redirect_to "/bikes"
  end

end