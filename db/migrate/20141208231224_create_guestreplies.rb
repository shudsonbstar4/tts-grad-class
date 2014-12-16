class CreateGuestreplies < ActiveRecord::Migration
  def change
    create_table :guestreplies do |t|
    	t.references :user, nil: false
    	t.references :event, nil: false
      #t.integer :user_id
      #t.integer :event_id
      t.integer :guest_count, nil: false, default:0

      t.timestamps
    end
    add_foreign_key :guestreplies, :users
    add_foreign_key :guestreplies, :events
  end
end
