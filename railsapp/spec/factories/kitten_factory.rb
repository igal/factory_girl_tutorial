# Make a factory called "kitten", which by
# default creates Kitten records
Factory.define :kitten do |f|
  # Make records w/ :legs default to 4
  f.legs 4
  # Name records "kitten-1", "kitten-2", etc.
  f.sequence(:name) { |n| "kitten-#{n}" }
  # Derive an attribute using a method call
  f.description { |r| "A kitten with #{r.legs} legs" }
end

Factory.define :kitten_with_toys, :parent => :kitten do |f|
  # Toys to create via :has_many association
  f.toys do |r| 
    [
      r.association(:toy, :name => "Fragile Vase"),
      r.association(:toy, :name => "My Leg")
    ]
  end
end

Factory.define :kitten_with_toys_and_description_callback, \
    :parent => :kitten_with_toys do |f|
  f.after_build do |r|
    r.description = "A kitten with #{r.legs} legs and #{r.toys.count} toys"
  end
end
