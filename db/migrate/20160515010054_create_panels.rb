class CreatePanels < ActiveRecord::Migration
  def change
    create_table :panels do |t|
      t.string :category
      t.string :description
      t.timestamps null: false
    end
  end
end
