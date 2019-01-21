class Quote < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :content, presence: true, length: { minimum: 5 }
end
