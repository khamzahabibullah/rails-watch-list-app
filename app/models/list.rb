class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews
  validates :name, uniqueness: true
  validates :name, presence: true
end
