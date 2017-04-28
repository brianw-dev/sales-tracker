class Tracking < ActiveRecord::Base
  validates :order_cost, :num_of_tix, :user, :event, presence: true

  belongs_to :user
  belongs_to :event
end
