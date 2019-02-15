class CreateSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categories do |t|
      t.references :vehicle, foreign_key: true
      t.string :sub_category

      t.timestamps
    end
  end
end
