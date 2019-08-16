# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :text
#  user_name       :text
#  address         :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
end
