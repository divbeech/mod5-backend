class User < ApplicationRecord
    has_many :studios, through: :reviews
    has_many :reviews
    has_many :klasses, through: :subscriptions
    has_many :subscriptions
    has_secure_password
end
