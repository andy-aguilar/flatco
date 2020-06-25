class CreateDevProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :dev_projects do |t|
      t.integer :dev_id
      t.integer :project_id

      t.timestamps
    end
  end
end
