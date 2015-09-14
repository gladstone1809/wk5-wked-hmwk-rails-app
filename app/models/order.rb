class Order < ActiveRecord::Base
  has_many :guests
  has_many :drinks
  has_many :membersclubs
end
