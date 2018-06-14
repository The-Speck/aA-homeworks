class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false
      t.string :title, null: false
      t.date :date, null: false
      t.boolean :live, default: false
      t.boolean :studio, default: true
      
      t.timestamps
    end
    
    add_index :albums, :title
    add_index :albums, :band_id
  end
end
