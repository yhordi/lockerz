class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.string :size
      t.integer :locker_id
      t.string :guest_name
      t.timestamps
    end
  end
end
