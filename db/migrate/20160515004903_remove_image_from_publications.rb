class RemoveImageFromPublications < ActiveRecord::Migration
  def change
    remove_column :publications, :image_file_name, :string
    remove_column :publications, :image_content_type, :string
    remove_column :publications, :image_file_size, :string
    remove_column :publications, :image_updated_at, :string
  end
end
