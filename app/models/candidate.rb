class Candidate < ApplicationRecord
  belongs_to :precinct
  belongs_to :ballot
end
