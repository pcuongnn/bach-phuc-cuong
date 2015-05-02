# Preview all emails at http://localhost:3000/rails/mailers/shoe_mailer
class ShoeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/shoe_mailer/shoe_info
  def shoe_info
    ShoeMailer.shoe_info
  end

end
