class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  has_many :task_categories, as: :ownerable
  has_many :custome_categories, as: :ownerable
end

# == Schema Information
#
# Table name: projects
#
#  id          :bigint(8)        not null, primary key
#  description :string           default("")
#  homepage    :string           default("")
#  is_public   :boolean          default(TRUE)
#  name        :string           default("")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#
# Indexes
#
#  index_projects_on_user_id  (user_id)
#
