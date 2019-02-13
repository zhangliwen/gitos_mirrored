class CreateCustomCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_categories do |t|
      t.references :ownerable, polymorphic: true, comment: '属于迭代/项目/仓库'
      t.string :name

      t.timestamps
    end
  end
end
