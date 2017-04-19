class ContactMailer < ApplicationMailer

  default from: 'whatever@sassy.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'divij.mehra.16@gmail.com', subject: 'New message from Good Art') do |format|
          format.html { render 'contact_mailer' }
          format.text { render 'contact_mailer' }
       end
  end

end
