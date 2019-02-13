class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.references :project
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
