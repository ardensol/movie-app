class Hasmanymovielistsmovies < ActiveRecord::Migration
  def change
  	create_table :movie_lists_movies, id: false do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :movie_list, index: true
    end
  end
end
