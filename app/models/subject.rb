class Subject < ApplicationRecord
  belongs_to :year
  has_many :reviews

  before_create :slugify

  def slugify 
    self.slug = name.parameterize
  end

  def avg_score
    return 0 unless reviews.count.positive?
    reviews.average(:avg_score).round(2).to_f
  end

  def partial_scores_avg
    scores = {
      score1: 0,
      score2: 0,
      score3: 0,
      score4: 0
    }
    return scores unless reviews.count.positive?
    scores[:score1] = reviews.average(:score1).round(2).to_f
    scores[:score2] = reviews.average(:score2).round(2).to_f
    scores[:score3] = reviews.average(:score3).round(2).to_f
    scores[:score4] = reviews.average(:score4).round(2).to_f
    scores
  end


end
