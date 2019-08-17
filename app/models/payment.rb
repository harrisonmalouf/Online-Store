# == Schema Information
#
# Table name: payments
#
#  id                 :bigint           not null, primary key
#  first_name         :string
#  last_name          :string
#  address            :text
#  credit_card_name   :text
#  credit_card_number :integer
#  cvv                :integer
#  card_expire_date   :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Payment < ApplicationRecord
end
