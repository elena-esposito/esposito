class AddImageLinkAttribute < ActiveRecord::Migration
  def change
    add_column :publications, :image_link, :string
  end
end
