class ShopController < ApplicationController
  def men_fabrics
    @fabrics = Fabric.where(:fabric_type => "men");
    render 'layouts/fabrics'
  end
end
