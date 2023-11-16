class AccountsController < ApplicationController

  def show
    @account = current_user
    @pets = @account.pets
  end
end
