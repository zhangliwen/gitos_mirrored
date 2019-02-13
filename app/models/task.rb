class Task < ApplicationRecord
  belongs_to :ownerable, polymorphic: true
  belongs_to :category, polymorphic: true
  belongs_to :status, polymorphic: true
  has_many :task_categories
end

# == Schema Information
#
# Table name: tasks
#
#  id                       :bigint(8)        not null, primary key
#  category_type            :string
#  description              :text
#  ownerable_type           :string
#  status_type              :string
#  title                    :string           default("")
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  category_id(类型：多态)       :bigint(8)
#  ownerable_id(属于迭代/项目/仓库) :bigint(8)
#  status_id(状态: 多态)        :bigint(8)
#
# Indexes
#
#  index_tasks_on_category_type_and_category_id    (category_type,category_id)
#  index_tasks_on_ownerable_type_and_ownerable_id  (ownerable_type,ownerable_id)
#  index_tasks_on_status_type_and_status_id        (status_type,status_id)
#
