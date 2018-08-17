class Api::Admin::MissionsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_mission, only: [:show, :update, :destroy]
    def index
        @missions = Mission.all 
    end

    def show
         
    end
    
    def create
        @mission = Mission.new(mission_params)
        if @mission.save
            render :show, status: :created
        else
            render json: @mission.errors, status: :unprocessable_entity
        end
    end
    

    def update
      if @mission.update(mission_params)
        render :show, status: :ok
      else
        render json: @mission.errors, status: :unprocessable_entity
      end
    end

    def destroy
        @mission.destroy
        render :show, status: :ok
    end
    

    private
        def find_mission
            @mission = Mission.find(params[:id])
        end

        def mission_params
            params.require(:mission).permit(:content)
        end
        
end
