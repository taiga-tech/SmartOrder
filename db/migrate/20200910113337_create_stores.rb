class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :zipcode,   null: false
      t.string :address,   null: false
      t.float  :latitude
      t.float  :longitude
      t.string :tel,       null: false
      t.string :time,      null: false
      t.string :holyday,   null: false

      t.timestamps
    end
  end
end
