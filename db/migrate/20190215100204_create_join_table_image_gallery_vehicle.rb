class CreateJoinTableImageGalleryVehicle < ActiveRecord::Migration[5.2]
  def change
    create_join_table :image_galleries, :vehicles do |t|
      t.index [:image_g_id, :vehicle_id]
      t.index [:vehicle_id, :image_g_id]

      t.string :image_gallery
    end
  end
end
