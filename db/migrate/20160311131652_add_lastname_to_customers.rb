class AddLastnameToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :lastname, :string
  end
end
