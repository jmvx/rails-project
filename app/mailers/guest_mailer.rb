class GuestMailer < ApplicationMailer
  default :from => 'julia@jmv.me'
  
  def guest_email(guest)
    @guest = guest
    attachments.inline['DragonMedium.png'] = File.read('public/images/DragonMedium.png')
    mail(:to => 'jmvancleve@gmail.com', :subject => '[LLVM SOCIAL] RSVP Notification ')
  end
end


