class Membership < ActiveRecord::Base
  has_many :guests
  has_many :membersclubs
end
