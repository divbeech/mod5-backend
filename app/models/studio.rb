class Studio < ApplicationRecord
    has_many :users, through: :reviews
    has_many :reviews
    # has_many :klasses
end
