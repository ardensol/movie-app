class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.string :user_email
      t.float :rating
      t.text :comment

      t.timestamps null: false
    end
  end
end
