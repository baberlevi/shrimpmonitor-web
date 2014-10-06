class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :site_name
      t.string :site_zip
      t.integer :company_id

      t.timestamps
    end
  end
end
