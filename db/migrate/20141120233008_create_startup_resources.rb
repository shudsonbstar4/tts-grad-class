class CreateStartupResources < ActiveRecord::Migration
  def change
    create_table :startup_resources do |t|
      t.references :user
      t.string :category
      t.string :name, nil: false
      t.string :url, nil: false

      t.timestamps
    end
    add_foreign_key :startup_resources, :users
  end
end
