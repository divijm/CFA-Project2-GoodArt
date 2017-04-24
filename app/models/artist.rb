class Artist < ApplicationRecord

  belongs_to :user
  has_many :arts

  has_attached_file :profilepic, styles: {large:"600x600>", medium: "300x300>", thumb: "150x150#"}, :default_url => "default_profile.png"
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode

  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode  # auto-fetch address

end
