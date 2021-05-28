class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id
  has_one :store
end
