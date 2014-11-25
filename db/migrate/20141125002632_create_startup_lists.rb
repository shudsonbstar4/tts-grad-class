class CreateStartupLists < ActiveRecord::Migration
  def change
    create_table :startup_lists do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
