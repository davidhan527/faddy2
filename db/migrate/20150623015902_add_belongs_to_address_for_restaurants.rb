class AddBelongsToAddressForRestaurants < ActiveRecord::Migration
  def change
    change_table :restaurants do |t|
      t.references :address
    end
  end
end
