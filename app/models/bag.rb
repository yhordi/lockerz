class Bag < ActiveRecord::Base
  belongs_to :locker
  validates :locker_id, presence: true, uniqueness: true
  validates :guest_name, presence: { message: "must enter a guest name" }
  validates :size, presence: true, numericality: { less_than: 4, greater_than: 0 }
  validate :bag_cannot_be_bigger_than_locker

  def bag_cannot_be_bigger_than_locker
    if self.locker && self.size && self.size > self.locker.size
      errors.add(:size, "can't be bigger than locker")
    else
      self.store
    end
  end

  def store
    p self.locker
    self.locker.update_column(:empty, false)
  end
end

