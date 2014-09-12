require "spec_helper"

describe Locker do
  context "validations" do
    it { should have_one(:bag) }
    it { should validate_presence_of(:size)}
  end
  context "contents" do
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
    it "should hold a bag of the corresposnding size" do
      expect(@locker.size).to eq(@bag.size)
    end
    it "can hold a bag smaller than it's size" do
      @bag.size = 1
      expect(@bag.size).to be < (@locker.size)
    end
  end
  context "existstance" do
    before(:each) do
      @locker = Locker.new
      @locker.id = 3
      @locker.size = 3
    end
    it "is given a size" do
      expect(@locker.size).to eq(3)
    end
    it "has an attribute 'empty' which is defaulted to true" do
      expect(@locker.empty).to eq(true)
    end
  end
end