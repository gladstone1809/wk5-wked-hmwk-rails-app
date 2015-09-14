class Guest < ActiveRecord::Base
  has_many :membersclubs, through: :membership
  has_many :drinks, through: :order
  has_many :events, through: :viplounge
end
