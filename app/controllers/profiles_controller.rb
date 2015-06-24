class ProfilesController < ApplicationController
  
  def show
  	@user = User.find_by(id: current_user.id)

  end

  def contact
  	@sender = current_user.id
  	@recipient = params[:recipient]
  	@body = params[:content]
  	ContactMailer.contact_vendor(@sender,@recipient,@body).deliver_now

  end
end
