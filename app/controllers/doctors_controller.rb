class DoctorsController < ApplicationController
  def create
    @doctor = Doctor.create(doctor_params)
    @doctor.save

    redirect_to doctors_show
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
