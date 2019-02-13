class Warehouse < ApplicationRecord
  belongs_to :project
end

# == Schema Information
#
# Table name: warehouses
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :bigint(8)
#
# Indexes
#
#  index_warehouses_on_project_id  (project_id)
#
