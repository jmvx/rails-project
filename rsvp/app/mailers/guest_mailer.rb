class GuestMailer < ApplicationMailer
  default :from => 'someone@something.com'
  
  def guest_email(guest)
    @guest = guest
    attachments.inline['DragonMedium.png'] = File.read('public/images/DragonMedium.png')
    mail(:to => 'someone_else@something.com', :subject => '[LLVM SOCIAL] RSVP Notification ')
  end
end


