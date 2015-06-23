class AddNullFalseForFormattedAddressOnAddressesTable < ActiveRecord::Migration
  def change
    change_table :addresses do |t|
      change_column :addresses, :formatted_address, :string, null: false

    end
  end
end
