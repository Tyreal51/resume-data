class RenameAttribute < ActiveRecord::Migration[5.1]
  def change
    rename_column :capstones, :descrciption, :description
  end
end
