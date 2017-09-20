class Person < ApplicationRecord
  belongs_to :house,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :House
end
