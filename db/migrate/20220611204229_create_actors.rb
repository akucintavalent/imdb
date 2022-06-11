class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.references :name, null: false, foreign_key: true
      t.references :title, null: false, foreign_key: true
      t.string :character

      t.timestamps
    end
  end
end
