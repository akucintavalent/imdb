class CreateAwards < ActiveRecord::Migration[7.0]
  def change
    create_table :awards do |t|
      t.string :name

      t.timestamps
    end

    create_table :awards_titles, id: false do |t|
      t.belongs_to :award, index: true
      t.belongs_to :title, index: true
    end
  end
end
