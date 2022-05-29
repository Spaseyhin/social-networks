class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|

      t.string :name
      t.string :attachment
      t.string :image
      t.string :desc
      t.integer :page


      t.timestamps
    end
  end
end
