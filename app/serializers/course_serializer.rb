# rails g serializer category
class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
end
