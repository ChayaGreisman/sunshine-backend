class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :name
      t.string :img_url
      t.string :parent_email
      t.boolean :potty_trained
      t.string :birthday

      t.timestamps
    end
  end
end
