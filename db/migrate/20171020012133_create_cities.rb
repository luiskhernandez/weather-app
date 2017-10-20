class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.integer :identifier, index: :unique, null: false
      t.string  :name, null: false, index: true, default: ""
      t.string  :country, null: false, defatul: ""
      t.decimal :lon, precision: 10, scale: 6
      t.decimal :lat, precision: 10, scale: 6
      t.timestamps
    end
  end
end
