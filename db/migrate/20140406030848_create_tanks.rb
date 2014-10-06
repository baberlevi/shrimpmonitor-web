class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.integer :site_id
      t.text :site_tank_label
      t.string :description

      t.timestamps
    end
  end
end
