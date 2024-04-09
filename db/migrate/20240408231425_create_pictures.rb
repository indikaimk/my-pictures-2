class CreatePictures < ActiveRecord::Migration[7.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.belongs_to :user

      t.timestamps
    end
  end
end
