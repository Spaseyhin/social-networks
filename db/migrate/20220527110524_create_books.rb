class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :attachment
      t.string :desc
      t.string :page
      t.string :image

      t.timestamps
    end
  end
end
