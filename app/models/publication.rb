class Publication < ActiveRecord::Base
  include ActiveModel::Validations

  validates :title, presence: true
  validates :summary, presence: true
  validates :source, presence: true
  validates :link, presence: true
  validates :category, presence: true, inclusion: { in: ["algorithm_and_web", "fashion", "finance", "memory", "systems_theory", "other"] }

  #has_attached_file :image
  #validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
