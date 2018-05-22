class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date
      t.float :longitude
      t.float :latitude
      t.string :picture
      t.integer :price
      t.references :sport, foreign_key: true
      t.references :state, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
