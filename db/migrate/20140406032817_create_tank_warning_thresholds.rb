class CreateTankWarningThresholds < ActiveRecord::Migration
  def change
    create_table :tank_warning_thresholds do |t|
      t.integer :tank_id
      t.float :ph_threshold
      t.float :do_threshold
      t.float :orp_threshold
      t.float :k1_threshold
      t.float :k10_threshold
      t.float :temp_threshold

      t.timestamps
    end
  end
end
