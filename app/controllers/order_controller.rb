class OrderController < ApplicationController
  before_action :authenticate_customer!

  def create
    order = Order.new
    order.customer_id = current_customer.id
    order.fabric_id = params[:fabric_id]
    order.designer_id = params[:designer_id] if params[:designer_id]
    order.price = params[:price]
    order.save!
    render 'static_pages/home'
  end
end
