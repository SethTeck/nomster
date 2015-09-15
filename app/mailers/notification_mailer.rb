class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
  	mail(to: "goletastudio@gmail.com",
  		subject: "A comment has been added to one of your places")
  end

end
