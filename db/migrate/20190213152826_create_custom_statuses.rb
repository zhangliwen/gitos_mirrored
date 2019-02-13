class CreateCustomStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_statuses do |t|
      t.references :custom_category
      t.string :name

      t.timestamps
    end
  end
end
