class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :formatted_address

      t.timestamps null: false
    end
  end
end
