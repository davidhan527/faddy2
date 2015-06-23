class AddAllAddressColumns < ActiveRecord::Migration
  def change
    change_table :addresses do |t|
      t.string :street_address
      t.string :route
      t.string :intersection
      t.string :political
      t.string :country
      t.string :administrative_area_level_1
      t.string :administrative_area_level_2
      t.string :administrative_area_level_3
      t.string :administrative_area_level_4
      t.string :administrative_area_level_5
      t.string :colloquial_area
      t.string :locality
      t.string :sublocality
      t.string :neighborhood
      t.string :premise
      t.string :subpremise
      t.string :postal_code
      t.string :natural_feature
      t.string :airport
      t.string :park
    end
  end
end
