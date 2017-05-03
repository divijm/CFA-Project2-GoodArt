class Artist < ApplicationRecord

  belongs_to :user
  has_many :arts

  has_attached_file :profilepic, styles: {large:"600x600>", medium: "300x300#", thumb: "100x100#"}, :default_url => "minion.png"

  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode

end
