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
 
 def destroy
   plant = Plant.find(params[:id])
   plant.delete
   redirect_to plants_path
 end
 
 def edit
   @plant = Plant.find(params[:id])
 end
 
 def update
   @plant = Plant.find(params[:id])
   @plant.update_attributes(params[:plant])
   redirect_to plant_path(@plant)
 end

end
