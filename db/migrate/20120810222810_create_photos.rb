class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :facebook_id
      t.string :udid
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
