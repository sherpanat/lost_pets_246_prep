class Pet < ApplicationRecord
  SPECIES = %w(dog cat turtle rabbit snake)
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    Time.now.day - found_on.day
  end
end
