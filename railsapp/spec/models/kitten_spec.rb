require 'spec_helper'

describe Kitten do
  describe "with fixtures" do
    fixtures :kittens

    it "should have a number of legs" do
      kitten = kittens(:shiva)
      kitten.legs.should be_a_kind_of(Fixnum)
    end
  end
end
