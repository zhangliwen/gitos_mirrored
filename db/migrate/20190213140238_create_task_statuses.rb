class CreateTaskStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :task_statuses do |t|
    	t.references :task_category
      t.string :name

      t.timestamps
    end
  end
end
