class FacilitiesController < ApplicationController
  before_action :set_facility, only: %i[ show edit update destroy ]
  def index
    @facilities = Facility.all
  end

  def show; end

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)

    if @facility.save
      redirect_to @facility, notice: "Facility created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @facility.update(facility_params)
      redirect_to @facility, notice: "Facility updated successfully."
    else
      render :edit, status: :unprocessable_enity
    end
  end

  def destroy
    @facility.destroy
    redirect_to :facilities, notice: "Facility successfully deleted."
  end

  private

  def set_facility
    @facility = Facility.find(params[:id])
  end

  def facility_params
    params.require(:facility).permit(:title, :status, :private, :primary_state)
  end
end
