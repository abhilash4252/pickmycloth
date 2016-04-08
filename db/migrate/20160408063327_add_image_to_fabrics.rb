class AddImageToFabrics < ActiveRecord::Migration
  def change
    add_column :fabrics, :image, :string
  end
end
