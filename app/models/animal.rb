class Animal < ApplicationRecord
    has_many :sightings
    has_many :animal, through: :sightings
end
