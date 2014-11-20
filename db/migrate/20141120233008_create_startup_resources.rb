class CreateStartupResources < ActiveRecord::Migration
  def change
    create_table :startup_resources do |t|
      t.integer :user_id
      t.string :category
      t.string :name, nil: false
      t.string :url, nil: false

      t.timestamps
    end
  end
end
