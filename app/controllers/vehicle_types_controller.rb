class VehicleTypesController < ApplicationController
  before_action :set_vehicle_type, only: %i[ show ]

  # GET /vehicle_types
  def index
    @vehicle_types = VehicleType.all

    render json: @vehicle_types
  end

  # GET /vehicle_types/1
  def show
    render json: @vehicle_type
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_type
      @vehicle_type = VehicleType.find(params[:id])
    end
end
