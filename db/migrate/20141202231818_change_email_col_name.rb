class ChangeEmailColName < ActiveRecord::Migration
  def change
  	rename_column :startup_lists, :email, :url
  end
end
