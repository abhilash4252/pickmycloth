class Shop::WomensFabricsController < ApplicationController
  def index
    @fabrics = Fabric.where(:fabric_type => "women");
    render 'layouts/fabrics'
  end

  def show
    @fabric = Fabric.where(id: params[:id])
    render 'layouts/fabric' 
  end 
end
