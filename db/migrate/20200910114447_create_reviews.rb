class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer    :star,    null: false
      t.text       :comment
      t.references :menu,    foreign_key: true

      t.timestamps
    end
  end
end
