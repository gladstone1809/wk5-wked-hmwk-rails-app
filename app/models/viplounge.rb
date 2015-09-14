class Viplounge < ActiveRecord::Base
  belongs_to :membersclub
  has_many :events
  has_many :guests
end
