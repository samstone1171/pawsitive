class AccountsController < ApplicationController

  def show
    @account = current_user
    @pets = @account.pets
    @rentals = @account.rentals_as_lister
  end
end
