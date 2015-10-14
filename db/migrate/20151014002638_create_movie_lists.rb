class CreateMovieLists < ActiveRecord::Migration
  def change
    create_table :movie_lists do |t|
      t.string :query
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
