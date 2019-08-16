# == Schema Information
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  name       :text
#  type       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord
end
