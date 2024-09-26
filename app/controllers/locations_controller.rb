class LocationsController < ApplicationController
  before_action :set_facility
  before_action :set_location, only: %i[ show edit update destroy]
  def show; end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params.merge(facility_id: @facility.id))

    if @location.save
      redirect_to @facility, notice: "Location added to Facility successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @location.update(location_params)
      redirect_to @facility, notice: "Location updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @location.destroy
    redirect_to @facility, notice: "Location deleted from facility"
  end

  private

  def set_facility
    @facility = Facility.find(params[:facility_id])
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :address_line_1, :address_line_2, :address_line_3, :city, :state, :zipcode, age_group_ids: [], nf_type_ids: [], disipline_ids: [])
  end
end
