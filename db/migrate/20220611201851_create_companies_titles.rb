class CreateCompaniesTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :companies_titles, id: false do |t|
      t.belongs_to :company, index: true
      t.belongs_to :title, index: true
    end
  end
end
