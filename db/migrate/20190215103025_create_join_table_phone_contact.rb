class CreateJoinTablePhoneContact < ActiveRecord::Migration[5.2]
  def change
    create_join_table :phone_nos, :contacts do |t|
      t.index [:phone_n_id, :contact_id]
      t.index [:contact_id, :phone_n_id]

      t.string :phone_no
    end
  end
end
