# == Schema Information
#
# Table name: games
#
#  id           :bigint           not null, primary key
#  name         :text
#  release_date :date
#  image        :text
#  price        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  Description  :string
#

class Game < ApplicationRecord
end
