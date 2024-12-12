class ApperancesController < ApplicationController
  def index
  end

  def show
  end


  def new
    @apperance = Apperance.new
    @episodes = Episode.all
    @guests = Guest.all
  end 

  def create
    @new_apperence = Apperance.new(apperence_params)
    if @new_apperence.valid?
      @new_apperence.save
    redirect_to episode_path(@new_apperence.episode)
    else 
      flash[:errors] = @new_apperence.errors.full_messages
      redirect_to new_apperence_path
   
  end 


  def apperence_params
    params.require(:apperance).permit(:guest_id, :episode_id, :rating)
  end 

end


