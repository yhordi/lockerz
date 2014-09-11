class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.integer :size
      t.integer :locker_id
      t.string :guest_name
      t.references :locker
      t.timestamps
    end
  end
end
