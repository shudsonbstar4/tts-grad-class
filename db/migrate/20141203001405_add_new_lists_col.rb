class AddNewListsCol < ActiveRecord::Migration
  def change
  	add_column :startup_lists, :new_url, :string
  end
end
