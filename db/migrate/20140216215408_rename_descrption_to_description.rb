class RenameDescrptionToDescription < ActiveRecord::Migration
  def change
    rename_column :tasks, :descrption, :description
  end
end
