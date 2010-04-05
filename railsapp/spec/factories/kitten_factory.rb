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

