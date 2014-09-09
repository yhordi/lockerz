class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.string :size
      t.boolean :empty
      t.timestamps
    end
  end
end
