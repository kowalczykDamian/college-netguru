class Comment < ApplicationRecord
  belongs_to :quote

  # TODO display errors msg for this validation
  validates :nick, presence: true, length: { minimum: 3, maximum: 25 }
end
