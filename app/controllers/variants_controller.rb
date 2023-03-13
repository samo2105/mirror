class VariantsController < ApplicationController
  before_action :set_variant, only: %i[ show ]

  # GET /variants
  def index
    @variants = Variant.all

    render json: @variants
  end

  # GET /variants/1
  def show
    render json: @variant
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variant
      @variant = Variant.find(params[:id])
    end
end
