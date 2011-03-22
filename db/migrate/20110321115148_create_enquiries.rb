class CreateEnquiries < ActiveRecord::Migration
  def self.up
    create_table :enquiries do |t|
      t.integer :user_id
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :address_2
      t.string :address_3
      t.string :town
      t.string :post_code
      t.string :contact_telephone
      t.string :email_address
      t.boolean :domain_name_required
      t.boolean :website_hosting_required
      t.boolean :website_development_needed
      t.text :message
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :enquiries
  end
end
