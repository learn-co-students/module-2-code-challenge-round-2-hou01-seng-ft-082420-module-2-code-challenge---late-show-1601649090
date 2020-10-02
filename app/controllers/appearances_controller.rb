class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance =Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.create(a_params)
        redirect_to episode_path(@appearance)
    end

    private

    def a_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end




