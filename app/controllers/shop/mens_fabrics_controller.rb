class Shop::MensFabricsController < ApplicationController

  def index
    @fabrics = Fabric.where(:fabric_type => "men");
    render 'layouts/fabrics'
  end

  def show
    @fabric = Fabric.where(id: params[:id])
    render 'layouts/fabric' 
  end
end
