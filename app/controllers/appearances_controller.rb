class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new 
        @guests = Guest.all 
        @episodes = Episode.all 
    end

    def create 
        appearance = Appearance.new(appearance_params)
        if !appearance.valid?
            flash[:errors] = appearance.errors.full_messages
            redirect_to new_appearance_path(appearance)  
    else
        appearance.save 
        redirect_to episode_path(appearance.episode)
    end
    end

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end

end

