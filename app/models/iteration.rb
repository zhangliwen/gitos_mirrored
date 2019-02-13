class Iteration < ApplicationRecord
  belongs_to :project
  belongs_to :user
end

# == Schema Information
#
# Table name: iterations
#
#  id          :bigint(8)        not null, primary key
#  commit_time :datetime
#  context     :string
#  user_email  :string
#  user_name   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :bigint(8)
#  user_id     :bigint(8)
#
# Indexes
#
#  index_iterations_on_project_id  (project_id)
#  index_iterations_on_user_id     (user_id)
#
