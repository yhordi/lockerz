require "spec_helper"

describe Locker do
  context "Validations" do
    it { should have_one(:bag) }
  end
  context "contents" do
    it "should hold a bag of the corresposnding size" do
      pending
    end
    it "should not hold a bag larger than it's own size" do
      pending
    end
    it "can hold a bag smaller than it's size" do
      pending
    end
  end
  context "existstance" do
    before :each do
      @locker = Locker.new
      @locker.id = 3
      @locker.size = 3
    end
    it "is given an id" do
      expect(@locker.id).to eq(3)
    end
    it "is given a size" do
      expect(@locker.size).to eq(3)
    end
    it "has an attribute 'empty' which is defaulted to true" do
      expect(@locker.empty).to eq(true)
    end
  end
end