class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.references :user, foreign_key: true
      t.references :art, foreign_key: true

      t.timestamps
    end
  end
end
