class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :event_time
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
