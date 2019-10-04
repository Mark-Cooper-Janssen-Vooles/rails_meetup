class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :location
      t.references :group, foreign_key: true
      t.text :image_url
      t.text :details

      t.timestamps
    end
  end
end
