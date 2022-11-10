class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: %i[movie_id list_id] }
end
