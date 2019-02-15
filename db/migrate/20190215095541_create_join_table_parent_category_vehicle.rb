class CreateJoinTableParentCategoryVehicle < ActiveRecord::Migration[5.2]
  def change
    create_join_table :parent_categories, :vehicles, :id => false do |t|
      t.index [:parent_c_id, :vehicle_id]
      t.index [:vehicle_id, :parent_c_id]

      t.string :parent_category
    end
  end
end
