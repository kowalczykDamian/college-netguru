class Quote < ApplicationRecord
  has_many :comments
  validates :content, presence: true, length: { minimum: 5 }
end
