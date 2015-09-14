class Drink < ActiveRecord::Base
  belongs_to :membersclub
  belongs_to :guest
end
