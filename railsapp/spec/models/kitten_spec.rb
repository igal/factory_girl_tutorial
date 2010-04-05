require 'spec_helper'

describe Kitten do
  describe "with fixtures" do
    fixtures :kittens

    it "should have a number of legs" do
      kitten = kittens(:shiva)
      kitten.legs.should be_a_kind_of(Fixnum)
    end
  end

  describe "with custom factory" do
    def create_kitten(name=nil, legs=nil)
      @name ||= 0
      name ||= "kitten-#{@name += 1}"
      legs ||= 4
      return Kitten.create(:name => name, :legs => legs)
    end

    it "should have a number of legs" do
      kitten = create_kitten("Shiva The Destroyer", 6)
      kitten.legs.should be_a_kind_of(Fixnum)
    end
  end

  describe "with factory_girl" do
    it "should have a number of legs" do
      kitten = Factory(:kitten)
      kitten.legs.should be_a_kind_of(Fixnum)
    end

    it "should have the expected number of legs" do
      # Override the :name & :legs defaults
      kitten = Factory(:kitten, \
       :name => "Shiva The Destroyer", :legs => 6)
      kitten.legs.should == 6
    end

    it "should have associated toys" do
      kitten = Factory(:kitten_with_toys)
      kitten.toys.count.should >= 0
      kitten.toys.each do |toy|
        toy.kitten.should == kitten
      end
    end

  end
end
