class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.boolean :sms
      t.string :contact_email2
      t.integer :company_id

      t.timestamps
    end
  end
end
