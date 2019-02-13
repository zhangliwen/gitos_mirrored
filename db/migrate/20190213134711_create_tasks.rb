class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
    	t.references :ownerable, polymorphic: true, comment: '属于迭代/项目/仓库'
    	t.references :category, polymorphic: true, comment: '类型：多态'
    	t.references :status, polymorphic: true, comment: '状态: 多态'
    	t.string :title, default: ''
    	t.text :description

      t.timestamps
    end
  end
end
