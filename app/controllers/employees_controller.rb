class EmployeesController < ApplicationController
  before_action :set_facility
  before_action :set_locations
  before_action :set_employee, only: %i[ edit update destroy]

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to @facility, notice: "Staff member added to location."
    else
        render :new, status: :unprocessable_entity
    end
  end
  def edit; end

  def update
    if @employee.update(employee_params)
      redirect_to @facility, notice: "Staff member updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @employee.destroy
    redirect_to @facility, notice: "Staff member successfully deleted."
  end

  private

  def set_facility
    @facility = Facility.find(params[:facility_id])
  end

  def set_locations
    @locations = @facility.locations
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:prefix, :name, :suffix, :employee_type, :coordinator, :location_id)
  end
end
