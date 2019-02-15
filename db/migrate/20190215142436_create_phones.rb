class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.references :contact, foreign_key: true
      t.string :phone_no

      t.timestamps
    end
  end
end
