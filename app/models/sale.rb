class Sale < ActiveRecord::Base
  validates :price, :num_of_tix, :user, :event, presence: true

  belongs_to :user
  belongs_to :event
end
