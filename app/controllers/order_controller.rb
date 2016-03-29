class OrderController < ApplicationController
  before_action :authenticate_customer!

  def create
    order = Order.new
    byebug
    order.customer_id = current_customer.id
    order.fabric_id = params[:fabric_id]
    order.designer_id = params[:designer_id] if params[:designer_id]
    order.price = (params[:price].to_f * params[:quantity].to_f).round(2)
    if order.save! 
      if params[:No].present? && params[:No] == "on"
        CustomerMailer.order_confirmation(current_customer, order).deliver_now
      elsif params[:Yes].present? && params[:Yes] == "on"
        CustomerMailer.order_design_confirmation(current_customer, order).deliver_now
      end
        flash[:notice] = "Order placed succesfully"
      redirect_to '/'
    end
  end
end
