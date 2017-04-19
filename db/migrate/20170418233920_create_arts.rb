class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :type
      t.string :size
      t.string :medium
      t.string :location
      t.date :date_made
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
