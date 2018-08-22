class SavedPlacesController < ApplicationController
  before_action :set_saved_place, only: [:show, :update, :destroy]

  # GET /saved_places
  def index
    @saved_places = SavedPlace.all

    render json: @saved_places
  end

  # GET /saved_places/1
  def show
    render json: @saved_place
  end

  # POST /saved_places
  def create
    @saved_place = SavedPlace.new(saved_place_params)

    if @saved_place.save
      render json: @saved_place, status: :created, location: @saved_place
    else
      render json: @saved_place.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saved_places/1
  def update
    if @saved_place.update(saved_place_params)
      render json: @saved_place
    else
      render json: @saved_place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saved_places/1
  def destroy
    @saved_place.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_place
      @saved_place = SavedPlace.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def saved_place_params
      params.require(:saved_place).permit(:name, :location, :user_id)
    end
end
