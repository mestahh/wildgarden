class PlantsController < ApplicationController

  def index
    @plants = Plant.find(:all)
  end

 def new
   @plant = Plant.new
 end
 
 def show
   @plant = Plant.find(params[:id])
 end
 
 def create
   plant = Plant.new(params[:plant])
   plant.save
   redirect_to plants_path
 end

end
