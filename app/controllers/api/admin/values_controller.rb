class Api::Admin::ValuesController < ApplicationController
  before_action :set_value, only: [:show, :update, :destroy]

  # GET /values
  # GET /values.json
  def index
    @values = Value.all
    
  end

  # GET /values/1
  # GET /values/1.json
  def show
    render json: @value
  end

  # POST /values
  # POST /values.json
  def create
    @value = Value.new(value_params)

    if @value.save
      render :show, status: :created, location: @value
    else
      render json: @value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /values/1
  # PATCH/PUT /values/1.json
  def update
    if @value.update(value_params)
      render :show, status: :ok, location: @value
    else
      render json: @value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /values/1
  # DELETE /values/1.json
  def destroy
    @value.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_value
      @value = Value.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def value_params
      params.require(:value).permit(:name)
    end
end
