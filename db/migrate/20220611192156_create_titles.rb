class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.string :title
      t.string :title_type
      t.integer :year
      t.string :image
      t.date :release_date
      t.integer :minutes
      t.text :plot
      t.string :countries
      t.decimal :rating
      t.integer :votes_count
      t.string :keywords

      t.timestamps
    end
  end
end
