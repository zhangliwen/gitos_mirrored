class CustomCategory < ApplicationRecord
  belongs_to :ownerable, polymorphic: true
  has_many :custom_statuses
end

# == Schema Information
#
# Table name: custom_categories
#
#  id                       :bigint(8)        not null, primary key
#  name                     :string
#  ownerable_type           :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  ownerable_id(属于迭代/项目/仓库) :bigint(8)
#
# Indexes
#
#  index_custom_categories_on_ownerable_type_and_ownerable_id  (ownerable_type,ownerable_id)
#
