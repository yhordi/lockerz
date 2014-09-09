require "spec_helper"

describe Bag do
    context "Validations" do
    it {should belong_to(:locker)}
  end
end