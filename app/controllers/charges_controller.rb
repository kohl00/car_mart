class ChargesController < ApplicationController
  before_action :set_charge, only: [:show, :edit, :update, :destroy]

   def new
  end

  def complete
    @charge = Charge.find(params[:charge_id])
    @car = Car.find_by(user_id: @charge.user_id, arrived: false, id: @charge.car_id)

    Stripe.api_key = ENV["stripe_api_key"]
    token = params[:token]
    charge = Stripe::Charge.create({
      :amount => @charge.price * 100,
      :description => 'Rails Stripe customer',
      :customer => params[:customer_id],
      :currency => 'usd',
      :destination => @charge.vendor.uid,
      :application_fee => 200+(@charge.price*3)+ 31
      },
    )
    @charge.update_attribute(:completed, true)
    @car.update_attribute(:arrived, true)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to purchases_index_path
  end

  def create
    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card => params[:stripeToken]
    )
    @charge = Charge.new(
    price: params[:charge]["amount"].to_i,
    user_id: current_user.id,
    vendor_id: params[:charge]["owner_id"].to_i,
    car_id: params[:charge]["item"],
    token: params[:stripeToken],
    customer_id: customer.id
    )
    @charge.save

    @car = Car.find_by(id: @charge.car_id)
    @car.user_id = @charge.user_id
    @car.arrived = false
    @car.save
    redirect_to root_path, success: "Thanks for purchasing your car!"
  end
end
