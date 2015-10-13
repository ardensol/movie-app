class Movie < ActiveRecord::Migration
  def change
  	create_table :movies do |t|
  		t.string :title
  		t.string :genre
  		t.string :thumbnail
  		t.date	 :release_date
  		t.string :director
  		t.string :cast

  		t.timestamps null: false

  	end
  end
end
