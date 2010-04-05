Factory.define(:toy) do |f|
  f.sequence(:name) { |n| "toy-#{n}" }
end

Factory.define(:toy_with_kitten, \
    :parent => :toy) do |f|
  # Create a kitten for this toy
  f.association(:kitten)
end
