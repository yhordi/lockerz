require "spec_helper"

describe Bag do
  context "Validations" do
    before(:each) do
      @locker = Locker.new
      @locker.size = 2
      @locker.id = 2
      @bag = Bag.new
      @bag.id = 2
      @bag.guest_name = "Kelley Puckett"
      @bag.size = 2
      @bag.locker_id = 2
      @locker.bag_id = 2
    end
    it { should belong_to(:locker) }
    it { should validate_presence_of(:size) }
    it { should validate_uniqueness_of(:locker_id)}
    it  "should return an error if a bag has no guest_name" do
      @bag.guest_name = nil
      expect(@bag).to_not be_valid
    end
    it "should validate that the size is between 0 and 4" do
      expect(@bag.size).to be_between(0, 4)
    end
    it "should validate that the bag is in a locker" do
      expect(@bag.locker_id).to_not eq(nil)
    end
  end

  context "Invalidations" do
    before(:each) do
      @bag = Bag.new
    end
    it "should not validate a bag with no guest_name" do
      expect(@bag.guest_name).to eq(nil)
    end
    it "should not validate a bag with no size" do
      expect(@bag.size).to eq(nil)
    end
    it "should not validate a bag with a size that is not between 0 and 4" do
      @bag.size = 7
      expect(@bag.size).to_not be_between(0, 4)
    end
  end
end