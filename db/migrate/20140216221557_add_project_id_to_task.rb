class AddProjectIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :project_id, :integer, index: true

  end
end
