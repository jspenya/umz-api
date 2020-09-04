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
class Account < ApplicationRecord
end
