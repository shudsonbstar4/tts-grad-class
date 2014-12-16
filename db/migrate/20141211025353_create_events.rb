class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :group_id
      t.string :event_title
      t.text :event_desc
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
