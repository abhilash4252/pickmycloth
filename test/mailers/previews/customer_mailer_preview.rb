# Preview all emails at http://localhost:3000/rails/mailers/customer_mailer
class CustomerMailerPreview < ActionMailer::Preview
  def order_confirmation_preview
    CustomerMailer.order_confirmation Customer.first
  end
end
