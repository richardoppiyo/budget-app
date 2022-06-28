class Group < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :transactions
  has_many :entities, through: :transactions
end
