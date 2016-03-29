class CustomerMailer < ApplicationMailer
  default from: "from@example.com"

  def order_confirmation(customer)
    @customer = customer
    mail(to: @customer.email, subject: 'Sample Email')
  end
end
