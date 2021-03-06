class CreateUserReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_reviews do |t|
      t.text :content
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
