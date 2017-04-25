class Art < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  has_attached_file :image, styles: {large:"600x600#", medium: "300x300#", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  ratyrate_rateable "rating"

  def index
  @q = Art.ransack(params[:q])
  @arts = @q.result(distinct: true)
  end

end
