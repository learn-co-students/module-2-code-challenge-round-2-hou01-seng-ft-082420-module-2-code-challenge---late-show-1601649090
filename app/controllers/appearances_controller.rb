class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guest = Guest.all
        @episode = Episode.all
    end

    def create
        @appearance = Appearance.create(appearance_params)
       
        redirect_to '/episodes/:id'
    end


    def appearance_params
        params.require(:appearance).permit(:rating, :episode_id, :guest_id)
    end
end
