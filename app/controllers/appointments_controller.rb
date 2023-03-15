class AppointmentsController < ApplicationController
  def index
    @appointments = policy_scope(Appointment)
  end

  def create
    pet = Pet.find_by(id: params[:pet_id])
    appointment = Appointment.new(pet: pet, user: current_user, date: Time.now, time: Time.now, status: 'pending')
    authorize appointment
    if appointment.save!
      redirect_to appointments_path
    else
      flash[:notice] = "Creating an appointment is not successful"
      redirect_to pet_path(pet)
    end
  end

  def destroy
    pet = Pet.find_by(id: params[:pet_id])
    appointment = Appointment.find_by(pet: pet, user: current_user)
    authorize appointment
    if appointment.destroy
      flash[:notice] = "Appointment is canceled"
      redirect_to pets_path
    else
      flash[:notice] = "Appointment is not canceled"
      redirect_to pet_path(pet)
    end
  end

  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = @pet.appointments.build(date: Date.today, start_time: Time.current, end_time: Time.current + 1.hour)
    authorize @appointment
  end
end
