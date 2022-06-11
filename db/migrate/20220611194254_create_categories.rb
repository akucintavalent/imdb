class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    create_table :categories_titles, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :title, index: true
    end
  end
end
