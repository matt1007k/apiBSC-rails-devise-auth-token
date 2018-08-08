class Api::Admin::VisionsController < ApplicationController
    def index
        @visions = Vision.all
        render json: @visions
    end
end
