class ContactsController < ApplicationController
  def new; end

  def send_email
    name = params[:name]
    email = params[:email]
    message = params[:message]

    ContactMailer.contact_email(name, email, message).deliver_now
    flash[:notice] = 'Message sent successfully.'
    redirect_to root_path
  end
end
