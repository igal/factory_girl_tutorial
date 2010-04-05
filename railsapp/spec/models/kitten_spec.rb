require 'spec_helper'

describe Kitten do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :legs => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Kitten.create!(@valid_attributes)
  end
end
