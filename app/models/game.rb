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
#  description  :string
#  genre        :text
#  user_id      :integer
#  games_id     :integer
#

class Game < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :payments, :optional => true
  has_and_belongs_to_many :orders
end
