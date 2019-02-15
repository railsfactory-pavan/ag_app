class CreateParentCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :parent_categories do |t|
      t.references :vehicle, foreign_key: true
      t.string :parent_category

      t.timestamps
    end
  end
end
