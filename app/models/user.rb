class User < ApplicationRecord
  has_one :nest, dependent: :destroy
end
