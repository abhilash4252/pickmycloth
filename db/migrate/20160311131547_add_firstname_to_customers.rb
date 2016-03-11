class AddFirstnameToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :firstname, :string
  end
end
