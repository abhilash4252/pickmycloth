class AddDescriptionToFabrics < ActiveRecord::Migration
  def change
    add_column :fabrics, :desc, :text
  end
end
