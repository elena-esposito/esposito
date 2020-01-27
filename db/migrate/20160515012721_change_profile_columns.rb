class ChangeProfileColumns < ActiveRecord::Migration
  def change
    add_column :profiles, :email, :string
    add_column :profiles, :biography, :string
    add_column :profiles, :cv_link, :string
  end
end
