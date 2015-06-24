class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_vendor.subject
  #
  def contact_vendor(sender,recipient,body)
  	@sender = sender
  	@recipient = recipient
  	@body = body
    mail(to: @recipient, from: @sender, subject: 'Interest from AutoGrotto')
  end
end
