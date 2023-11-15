class RentalsController < ApplicationController
  def index
    @rentals = current_user.rentals
  end

  def create
    @rental = Rental.new(rental_params)
    @pet = Pet.find(params[:pet_id])
    @rental.pet = @pet
    @rental.renter = current_user
    @rental.status = "waiting"

    if @rental.end_date && @rental.start_date
      @rental.total_price = @pet.price_per_day * (@rental.end_date - @rental.start_date)
    end

    if @rental.save
      flash[:notice] = "Request has been made!"
      redirect_to pet_path(@pet)
    else
      render "pets/show", status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
