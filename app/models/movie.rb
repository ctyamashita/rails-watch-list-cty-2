class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  def color
    if rating < 4
      '#F8333C'
    elsif rating < 7
      '#FCAB10'
    else
      '#44AF69'
    end
  end
end
