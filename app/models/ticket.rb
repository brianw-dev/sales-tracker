class Ticket < ActiveRecord::Base
  validates :initial_price, :user, :event, presence: true

  belongs_to :user
  belongs_to :event

end
