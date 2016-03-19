class AddDetailsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :customer_id, :integer
    add_column :orders, :fabric_id, :integer
    add_column :orders, :price, :string
    add_column :orders, :designer_id, :integer
  end
end
