class Artist < ApplicationRecord

  belongs_to :user
  has_many :arts

  has_attached_file :profilepic, styles: {large:"600x600>", medium: "300x300#", thumb: "100x100#"}, :default_url => "minion.png",
  storage: :s3,
  bucket: ENV['S3_BUCKET_NAME'],
  s3_credentials: {
    bucket: ENV['S3_BUCKET_NAME'],
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_KEY']
    }
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode

end
