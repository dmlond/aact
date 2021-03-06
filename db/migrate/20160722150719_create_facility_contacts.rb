class CreateFacilityContacts < ActiveRecord::Migration
  def change
    create_table :facility_contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :nct_id
      t.string :contact_type
      t.integer :facility_id
    end

    remove_column :facilities, :contact_name
    remove_column :facilities, :contact_phone
    remove_column :facilities, :contact_email
    remove_column :facilities, :contact_backup_phone
    remove_column :facilities, :contact_backup_name
    remove_column :facilities, :contact_backup_email
  end
end
