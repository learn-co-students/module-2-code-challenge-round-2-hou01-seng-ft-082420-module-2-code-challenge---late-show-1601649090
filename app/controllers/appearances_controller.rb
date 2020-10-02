class AppearancesController < ApplicationController

    # def index
    #     @appearances = Appearance.all
    # end

    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all 
    end

    def create
        new_ap = Appearance.new(ap_params)

        if !new_ap.valid?
            flash[:errors] = new_ap.errors.full_messages
            redirect_to new_appearance_path
        else
            new_ap.save
            redirect_to episode_path(new_ap.episode)
        end
    end

    private

    def ap_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end


end
  