class User < ApplicationRecord
  has_one :nest, dependent: :destroy
  has_and_belongs_to_many :user_reviews
end
