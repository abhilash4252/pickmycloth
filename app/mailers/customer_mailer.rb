class CustomerMailer < ApplicationMailer
  default from: "pickmycloth@gmail.com"

  def order_confirmation(customer, order)
    @customer = customer
    @order = order
    mail(to: @customer.email, subject: "Order Confirmation(Order - #{@order.id})")
  end

  def order_design_confirmation(customer, order)
    @customer = customer
    @order = order
    mail(to: @customer.email, subject: "Order Confirmation(Order - #{@order.id})")
  end

end
