class AddDetailsToTailors < ActiveRecord::Migration
  def change
    add_column :tailors, :name, :string
    add_column :tailors, :address, :string
    add_column :tailors, :phonenumber, :number
    add_column :tailors, :details, :text
  end
end
