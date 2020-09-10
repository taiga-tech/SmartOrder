class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer    :count, null: false
      t.references :user,  foeign_key: true

      t.timestamps
    end
  end
end
