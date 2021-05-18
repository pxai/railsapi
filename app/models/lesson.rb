class Lesson < ApplicationRecord
  def shortDescription
    description[0..39]
  end
end
