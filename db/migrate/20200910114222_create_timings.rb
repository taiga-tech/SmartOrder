class CreateTimings < ActiveRecord::Migration[6.0]
  def change
    create_table :timings do |t|
      t.string :name

      t.timestamps
    end
  end
end
