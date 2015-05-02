class ShoeMailer < ActionMailer::Base
  default from: "cuong@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shoe_mailer.shoe_info.subject
  #
  def shoe_info(email,shoe,all_comments)
    @email = email
    @shoe = shoe
    @all_comments = all_comments
        
    mail to: "#{email}"
  end
end
