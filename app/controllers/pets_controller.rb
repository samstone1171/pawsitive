class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index , :show]
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
    @rental = Rental.new
  end

  def new
  end

  def create
  end
end
