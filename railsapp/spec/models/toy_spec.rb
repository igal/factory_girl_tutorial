require 'spec_helper'

describe Toy do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :kitten_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Toy.create!(@valid_attributes)
  end
end
