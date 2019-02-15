class CreateJoinTableSubCategoryVehicle < ActiveRecord::Migration[5.2]
  def change
    create_join_table :sub_categories, :vehicles do |t|
      t.index [:sub_c_id, :vehicle_id]
      t.index [:vehicle_id, :sub_c_id]

      t.string :sub_category
    end
  end
end
