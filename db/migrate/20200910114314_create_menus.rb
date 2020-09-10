class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string     :name,     null: false
      t.integer    :price,    null: false
      t.text       :comment,  null: false
      t.references :category, foreign_key: true
      t.references :timing,   foreign_key: true
      
      t.timestamps
    end
  end
end
