class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :video_title
      t.string :video_id
      t.string :video_channel
      t.string :thumbnail_url
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
