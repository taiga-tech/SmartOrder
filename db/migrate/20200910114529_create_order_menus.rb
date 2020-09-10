class CreateOrderMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :order_menus do |t|
      t.references :menu,  foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
