class AddPhonenumberToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :phonenumber, :number
  end
end
