class TodoItem < ApplicationRecord
  validates :title, :description, presence: true
end
