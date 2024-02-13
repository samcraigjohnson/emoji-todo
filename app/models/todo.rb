class Todo < ApplicationRecord
  validates :todo, format: { with: /\A\p{Emoji}+\z/, message: "must be an emoji!" }
end
