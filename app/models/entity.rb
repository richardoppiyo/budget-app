class Entity < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_many :groups, through: :transactions
end
