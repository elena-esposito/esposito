class Panel < ActiveRecord::Base
  include ActiveModel::Validations

  validates :category, presence: true
  validates :description, presence: true

end
