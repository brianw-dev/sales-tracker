class Event < ActiveRecord::Base
  has_many :trackings
  has_many :sales
end
