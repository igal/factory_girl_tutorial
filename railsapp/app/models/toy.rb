class Toy < ActiveRecord::Base
  belongs_to :kitten

  def kitten_name
    return kitten.name
  end
end
