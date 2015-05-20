class PurchasesController < ApplicationController

  def index
  	@cars = Charge.charges(current_user)
  end
  
end
