class Api::Admin::VisionsController < ApplicationController
    before_action :authenticate_user!
    def index
        @visions = Vision.all
        render json: @visions
    end
end
