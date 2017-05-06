class CreateAddressBooks < ActiveRecord::Migration
  def change
    create_table :address_books do |t|
      t.string :name
      t.text :address
      t.string :phone_no
      t.string :facebook_profile
      t.string :twitter_profile

      t.timestamps
    end
  end
end
