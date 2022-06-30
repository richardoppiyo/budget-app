class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transactions
  has_many :groups, through: :transactions
end
