class RentalsController < ApplicationController
  def new
    @pet = Pet.find(:pet_id)
    @rental = Rental.new()
  end

  def create
    @rental = Rental.new(rental_params)
    @pet = Pet.find(:pet_id)
    @rental.pet = @pet
    if @rental.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
