class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :slug
      t.string :image_url
      t.string :description
      t.belongs_to :year, null: false, foreign_key: true

      t.timestamps
    end
  end
end