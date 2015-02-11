class AddPhotoUrlToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :photo_url, :string
  end
end
