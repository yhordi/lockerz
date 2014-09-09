require "spec_helper"

describe Locker do
    context "Validations" do
    it {should have_one(:bag)}
  end
end