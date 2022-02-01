class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.text :activity

      t.timestamps
    end
  end
end
