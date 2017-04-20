class ChangeArtistIdField < ActiveRecord::Migration[5.0]
  def change
    remove_reference :artists, :art, index: true
    add_reference :arts, :artist, foreign_key: true
  end
end
