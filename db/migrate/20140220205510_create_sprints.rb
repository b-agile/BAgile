class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :version
      t.string :name
      t.references :project, index: true
      t.date :start_date
      t.date :end_end
      t.string :status
      t.integer :initial_time

      t.timestamps
    end
  end
end
