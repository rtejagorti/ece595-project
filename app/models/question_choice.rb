class QuestionChoice < ApplicationRecord
  belongs_to :choice
  belongs_to :voter
  belongs_to :candidate
  belongs_to :question
end
