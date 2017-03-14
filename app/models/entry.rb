class Entry < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  def cool?
    false
  end
end
