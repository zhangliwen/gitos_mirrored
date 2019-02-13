class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user
      t.string :name, default: ""
      t.string :description, default: ""
      t.string :homepage, default: ""
      t.boolean :is_public, default: true

      t.timestamps
    end
  end
end
