class CreateIterations < ActiveRecord::Migration[5.2]
  def change
    create_table :iterations do |t|
      t.references :project
      t.references :user
      t.string :user_name
      t.string :user_email
      t.datetime :commit_time
      t.string :context

      t.timestamps
    end
  end
end
