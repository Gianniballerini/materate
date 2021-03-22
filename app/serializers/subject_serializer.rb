class SubjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug, :description, :year_id, :avg_score, :partial_scores_avg

  has_many :reviews
end
