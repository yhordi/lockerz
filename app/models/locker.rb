class Locker < ActiveRecord::Base
  has_one :bag
  validates :size, presence: true
end
