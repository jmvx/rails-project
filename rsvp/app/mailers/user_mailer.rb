class UserMailer < ApplicationMailer
  default :from => 'jmvancleve@gmail.com'
  
  def welcome_email(guest)
    @guest = guest
    mail(:to => 'julia@jmv.me', :subject => 'New RSVP')
  end
end
