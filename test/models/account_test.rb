# == Schema Information
#
# Table name: accounts
#
#  id         :bigint           not null, primary key
#  department :string
#  email      :string
#  first_name :string
#  last_name  :string
#  program    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
