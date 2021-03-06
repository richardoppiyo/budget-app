class Entity < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :transactions
  has_many :groups, through: :transactions
end
