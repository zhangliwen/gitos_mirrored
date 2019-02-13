require 'test_helper'

class CustomStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: custom_statuses
#
#  id                 :bigint(8)        not null, primary key
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  custom_category_id :bigint(8)
#
# Indexes
#
#  index_custom_statuses_on_custom_category_id  (custom_category_id)
#
