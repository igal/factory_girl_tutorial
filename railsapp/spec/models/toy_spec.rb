require 'spec_helper'

describe Toy do
  describe "with factory_girl" do
    it "should know owner's name" do
      # The Kitten association is automatically created
      toy = Factory(:toy_with_kitten)
      toy.kitten_name.should == toy.kitten.name
    end

    it "should know owner's specific name" do
      # Don't use default set of toys
      kitten = Factory(:kitten_with_toys, :toys => [], :name => "Shiva")
      # Use a specific kitten
      toy = Factory(:toy, :kitten => kitten)
      toy.kitten_name.should == kitten.name
    end
  end
end
