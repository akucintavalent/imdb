class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :video_title
      t.string :youtube_link
      t.references :title, null: false, foreign_key: true

      t.timestamps
    end
  end
end
