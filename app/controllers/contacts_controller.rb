class ContactsController < ApplicationController
  before_action :set_facility
  before_action :set_contact, only: %i[ show edit update destroy ]

  def show; end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to @facility, notice: "Contact details added to facility."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
   if @contact.update(contact_params)
    redirect_to @facility, notice: "Contact updated successfully."
   else
    render :edit, status: :unprocessable_entity
   end

  end
  def destroy
    @contact.delete
    redirect_to @facility, notice: "Contact delete from facility."
  end

  private

  def set_facility
    @facility = Facility.find(params[:facility_id])
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:method, :value, :private, :contactable_id, :contactable_type, :facility_id)
  end
end
