class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true

  validate :dayo

  def dayo
    errors.add(:name, 'error message!') if !name.include?('dayo')
  end
end
