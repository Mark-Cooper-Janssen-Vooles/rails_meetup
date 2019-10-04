class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :photo_url
      t.text :location
      t.text :interests
      t.text :list_of_groups
      t.datetime :date

      t.timestamps
    end
  end
end
