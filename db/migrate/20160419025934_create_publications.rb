class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.text :summary
      t.string :source
      t.string :link

      t.timestamps null: false
    end
  end
end
