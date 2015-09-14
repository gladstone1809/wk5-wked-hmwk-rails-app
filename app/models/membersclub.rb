class Membersclub < ActiveRecord::Base
  has_many :guests, through: :membership
  has_many :drinks, through: :order
  has_one :viplounge
  has_many :events, through: :viplounge
end
