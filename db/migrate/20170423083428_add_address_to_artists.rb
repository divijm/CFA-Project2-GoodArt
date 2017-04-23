class AddAddressToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :address, :string
  end
end
