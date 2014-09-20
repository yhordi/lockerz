class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.integer :size
      t.boolean :empty, :default => true
      t.references :bag
      t.timestamps
    end
  end


end
