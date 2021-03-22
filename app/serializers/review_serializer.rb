class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :avg_score, :score1, :score2, :score3, :score4, :subject_id
end
