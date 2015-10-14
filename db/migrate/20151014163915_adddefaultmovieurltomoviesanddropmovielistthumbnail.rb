class Adddefaultmovieurltomoviesanddropmovielistthumbnail < ActiveRecord::Migration
  def change
  	change_column :movies, :thumbnail, :string, :default => '/images/movie_placeholder.jpg'
  	remove_column :movie_lists, :thumbnail
  end
end
