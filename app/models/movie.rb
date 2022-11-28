class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # you cant delete a movie if it is referenced in at least one bookmark.
end
