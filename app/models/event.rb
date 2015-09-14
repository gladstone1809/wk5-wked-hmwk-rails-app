class Event < ActiveRecord::Base
  belongs_to :viplounge
  has_many :guests, through :viplounge
end
