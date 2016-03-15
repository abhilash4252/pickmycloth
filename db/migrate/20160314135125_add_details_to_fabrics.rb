class AddDetailsToFabrics < ActiveRecord::Migration
  def change
    add_column :fabrics, :name, :string
    add_column :fabrics, :fabric_type, :string
    add_column :fabrics, :price, :number
    add_column :fabrics, :quantity, :text
    add_column :fabrics, :sizes, :text
    add_column :fabrics, :color, :string
    add_foreign_key :fabrics, :suppliers
  end
end
