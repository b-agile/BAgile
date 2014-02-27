class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :role
      t.string :title
      t.text :descrption
      t.text :priority
      t.integer :estimation_in_second
      t.integer :time_spent_in_second
      t.references :reporter, index: true
      t.references :assign_to, index: true
      t.string :status

      t.timestamps
    end
  end
end
