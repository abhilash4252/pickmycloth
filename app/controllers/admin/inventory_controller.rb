class Admin::InventoryController < ApplicationController
  before_action :is_admin?

  def index

  end

  def create
    @fabric = Fabric.new
    @fabric.name = params['/admin/inventory'][:name]
    @fabric.price = params['/admin/inventory'][:price]
    @fabric.fabric_type = params['/admin/inventory'][:fabric_type]
    @fabric.image = params['/admin/inventory'][:image]
    if @fabric.save
      flash[:notice] = "#{@fabric.name} has been added succesfully"
      redirect_to '/admin/inventory'
    else
      render 'index'
    end
  end

  private
  def is_admin?
    if customer_signed_in? && current_customer.email == 'pickmycloth@gmail.com'
      return true
    else
      if current_customer
        sign_out current_customer
      end
      authenticate_customer!
    end

  end
end
