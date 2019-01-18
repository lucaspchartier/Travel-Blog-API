# frozen_string_literal: true

class HotelsController < ProtectedController
  before_action :set_hotel, only: %i[show update destroy]
  attr_reader :current_user

  # GET /hotels
  def index
    @hotels = current_user.hotels.order(id: :asc)

    render json: @hotels
  end

  # GET /hotels/1
  def show
    render json: @hotel
  end

  # POST /hotels
  def create
    @hotel = current_user.hotels.build(hotel_params)

    if @hotel.save
      render json: @hotel, status: :created, location: @hotel
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hotels/1
  def update
    if @hotel.update(hotel_params)
      render json: @hotel
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hotels/1
  def destroy
    @hotel.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hotel
    @hotel = current_user.hotels.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def hotel_params
    params.require(:hotel).permit(:name, :location)
  end
end
