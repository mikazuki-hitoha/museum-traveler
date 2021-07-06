class CreateMuseums < ActiveRecord::Migration[5.2]
  def change
    create_table :museums do |t|
      t.string :name, null: false
      t.string :holiday
      t.time :opening_time
      t.time :closing_time
      t.string :address, null: false
      t.string :phone_number
      t.text :image_url

      t.timestamps
    end
  end
end
