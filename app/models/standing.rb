class Standing < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :percent_correct, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :money_earned, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :difficulty, presence: true, inclusion: { in: %w[easy medium hard] }

  scope :high_earners, -> { where('money_earned > 1000') }
  scope :by_difficulty, ->(level) { where(difficulty: level) }

  def formatted_earnings
    "$#{money_earned}"
  end
end