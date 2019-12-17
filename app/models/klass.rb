class Klass < ApplicationRecord
    belongs_to :studio
    belongs_to :user
    has_many :users, through: :subscriptions
    has_many :subscriptions

end
