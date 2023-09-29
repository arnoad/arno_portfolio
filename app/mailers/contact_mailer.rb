class ContactMailer < ApplicationMailer
  default to: 'info@arnoarend.com' # Replace with your email address

  def contact_email(name, email, message)
    @name = name
    @message = message
    mail(subject: 'New Contact Form Submission')
  end
end
