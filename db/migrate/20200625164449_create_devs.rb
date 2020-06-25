class CreateDevs < ActiveRecord::Migration[6.0]
  def change
    create_table :devs do |t|
      t.string :name
      t.integer :experience
      t.string :workplace

      t.timestamps
    end
  end
end
