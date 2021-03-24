class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :avg_score
      t.integer :score1
      t.integer :score2
      t.integer :score3
      t.integer :score4
      t.integer :score5
      t.belongs_to :subject, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end