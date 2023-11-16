class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
    @rental = Rental.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.lister = current_user

    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :gender, :species, :life_stage, :size, :description, :price_per_day, :photo)
  end
end
