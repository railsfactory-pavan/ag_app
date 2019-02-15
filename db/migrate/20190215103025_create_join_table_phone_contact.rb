class CreateJoinTablePhoneContact < ActiveRecord::Migration[5.2]
  def change
    create_join_table :phone_nos, :contacts do |t|
      # t.index [:phone_no_id, :contact_id]
      # t.index [:contact_id, :phone_no_id]
    end
  end
end
