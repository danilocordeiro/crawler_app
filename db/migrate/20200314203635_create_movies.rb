class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image_url
      t.string :rating
      t.string :genre
      t.string :release_date

      t.timestamps
    end
  end
end
