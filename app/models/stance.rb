class Stance < ApplicationRecord
  belongs_to :referenda
  belongs_to :candidate
  belongs_to :voter
end
