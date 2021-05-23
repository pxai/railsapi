# generated with rails generate jsonapi:serializable tag
class SerializableTag < JSONAPI::Serializable::Resource
  type 'tags'

  attributes :name, :description

  attribute :date do
    @object.created_at
  end
end
