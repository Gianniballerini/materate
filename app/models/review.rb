class Review < ApplicationRecord
  belongs_to :subject
  belongs_to :user

  before_create :calculate_score

  def calculate_score
    self.avg_score = (( self.score1 + self.score2 + self.score3 + self.score4 ) / 4).round(2).to_f
  end
end
