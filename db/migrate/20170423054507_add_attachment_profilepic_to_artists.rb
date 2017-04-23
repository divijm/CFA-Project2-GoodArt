class AddAttachmentProfilepicToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :profilepic
    end
  end

  def self.down
    remove_attachment :artists, :profilepic
  end
end
