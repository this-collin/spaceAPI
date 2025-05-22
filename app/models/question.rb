class Question < ApplicationRecord
    # enum difficulty: { easy: "easy", medium: "medium", hard: "hard"}, _prefix: :difficulty
    validates :difficulty, :category, :question, :correct_answer, presence: true
    validates :incorrect_answers, length: { is: 3 }
end
